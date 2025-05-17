from matplotlib import pyplot as plt

sale_volumes = [100, 500, 1000, 5000]
production_costs = {100: 800, 500: 690, 1000: 502, 5000: 495}
additonal_costs = {100: 200, 500: 125, 1000: 92, 5000: 60}
personel_costs = 676_968

prices = [999, 1499, 1999]

unit_costs = []
profit_per_unit = {}

for sale_volume in sale_volumes:
    production_cost = production_costs[sale_volume] * sale_volume
    additonal_cost = additonal_costs[sale_volume] * sale_volume
    total_cost = production_cost + additonal_cost + personel_costs

    unit_cost = total_cost / sale_volume
    unit_costs.append(unit_cost)
    print(f"Koszt jednostkowy przy {sale_volume} sztukach: {unit_cost:.2f} zł")
    for price in prices:
        profit = price - unit_cost
        if price not in profit_per_unit:
            profit_per_unit[price] = []
        profit_per_unit[price].append(profit)
        print(f"Zysk przy {sale_volume} sztukach i cenie {price} zł: {profit:.2f} zł")

plt.figure(figsize=(20, 6))
plt.title("Koszt produkcji")
plt.plot(sale_volumes, unit_costs, label="Koszt w zł")
for price, profits in profit_per_unit.items():
    plt.plot(sale_volumes, profits, label=f"Zysk przy cenie {price} zł")
plt.xlabel("Ilość sprzedanych sztuk")
plt.ylabel("Koszt / profit jednostkowy")
plt.legend()
plt.grid()
plt.savefig("img/costs-plot.png", bbox_inches="tight")
plt.show()
