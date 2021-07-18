package §4;§
{
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §<T§.§`m§;
   
   public class §8"%§ extends §^g§
   {
      
      public static const §7!H§:Number = 1024;
      
      public static const §<"P§:Number = 658;
      
      public static const §4<§:Number = 55;
      
      public static const §-"O§:String = "cubic_in_out";
      
      public static const §!f§:String = "sin_in_out";
      
      public static const §9!,§:String = "none";
       
      
      private var §@i§:String;
      
      private var §4!K§:Number;
      
      private var §7!#§:Number;
      
      private var §,>§:Number;
      
      private var §`;§:Number;
      
      private var §0J§:Boolean = true;
      
      private var §'!'§:String = "cubic_in_out";
      
      public function §8"%§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§@i§ = param3;
         this.§4!K§ = param4;
         this.§7!#§ = param5;
         this.§'!'§ = param6;
      }
      
      public function set §!W§(param1:Boolean) : void
      {
         this.§0J§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`m§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§@i§))
            {
               if(_loc4_.name == §+!$§.§&!"§)
               {
                  if(this.§0J§)
                  {
                     _loc4_.x = -this.§#^§() * this.§9,§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§#^§() * this.§9,§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§4!K§;
                  _loc4_.y -= this.§7!#§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §9,§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§'!'§)
         {
            case §-"O§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §!f§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §#^§() : Number
      {
         if(this.§0J§)
         {
            return this.§,>§ - §7!H§;
         }
         return this.§`;§ - §<"P§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§,>§ = param1;
         this.§`;§ = param2;
      }
      
      override public function clone() : §^g§
      {
         var _loc1_:§8"%§ = new §8"%§(time,duration,this.§@i§,this.§4!K§,this.§7!#§,this.§'!'§);
         _loc1_.§,>§ = this.§,>§;
         _loc1_.§`;§ = this.§`;§;
         _loc1_.§0J§ = this.§0J§;
         return _loc1_;
      }
   }
}
