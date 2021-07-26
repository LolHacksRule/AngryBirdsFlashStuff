package §8$=§
{
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §7"T§.§#"^§;
   
   public class §0^§ extends §=Q§
   {
      
      public static const §!!x§:Number = 1024;
      
      public static const §@!=§:Number = 658;
      
      public static const §#!z§:Number = 55;
      
      public static const §0"L§:String = "cubic_in_out";
      
      public static const §@"'§:String = "sin_in_out";
      
      public static const §;!§:String = "none";
       
      
      private var §9$B§:String;
      
      private var §&$'§:Number;
      
      private var §<#-§:Number;
      
      private var §>"h§:Number;
      
      private var §"#G§:Number;
      
      private var §6!X§:Boolean = true;
      
      private var §2"G§:String = "cubic_in_out";
      
      public function §0^§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§9$B§ = param3;
         this.§&$'§ = param4;
         this.§<#-§ = param5;
         this.§2"G§ = param6;
      }
      
      public function set §>!8§(param1:Boolean) : void
      {
         this.§6!X§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#"^§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§9$B§))
            {
               if(_loc4_.name == §<"&§.§6A§)
               {
                  if(this.§6!X§)
                  {
                     _loc4_.x = -this.§1!p§() * this.§["9§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§1!p§() * this.§["9§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§&$'§;
                  _loc4_.y -= this.§<#-§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §["9§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§2"G§)
         {
            case §0"L§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §@"'§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §1!p§() : Number
      {
         if(this.§6!X§)
         {
            return this.§>"h§ - §!!x§;
         }
         return this.§"#G§ - §@!=§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§>"h§ = param1;
         this.§"#G§ = param2;
      }
      
      override public function clone() : §=Q§
      {
         var _loc1_:§0^§ = new §0^§(time,duration,this.§9$B§,this.§&$'§,this.§<#-§,this.§2"G§);
         _loc1_.§>"h§ = this.§>"h§;
         _loc1_.§"#G§ = this.§"#G§;
         _loc1_.§6!X§ = this.§6!X§;
         return _loc1_;
      }
   }
}
