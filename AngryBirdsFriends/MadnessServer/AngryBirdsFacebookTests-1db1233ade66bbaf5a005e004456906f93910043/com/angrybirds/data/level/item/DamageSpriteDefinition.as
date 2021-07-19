package com.angrybirds.data.level.item
{
   public class DamageSpriteDefinition
   {
       
      
      public var spriteName:String;
      
      public var maxHealth:int;
      
      public var minHealth:int;
      
      public var particles:String;
      
      public function DamageSpriteDefinition(spriteName:String, maxHealth:int, minHealth:int, particles:String = "")
      {
         super();
         this.spriteName = spriteName;
         this.maxHealth = maxHealth;
         this.minHealth = minHealth;
         this.particles = particles;
      }
   }
}
