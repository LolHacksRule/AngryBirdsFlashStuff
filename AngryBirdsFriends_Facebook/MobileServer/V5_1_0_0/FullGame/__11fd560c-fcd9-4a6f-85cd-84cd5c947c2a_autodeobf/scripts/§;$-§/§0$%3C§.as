package §;$-§
{
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   
   public class §0$<§ extends §<#N§
   {
      
      public static const §,g§:Number = 1024;
      
      public static const §2b§:Number = 658;
      
      public static const §'#i§:Number = 55;
      
      public static const §5#G§:String = "cubic_in_out";
      
      public static const §+"[§:String = "sin_in_out";
      
      public static const §3"z§:String = "none";
       
      
      private var §6"@§:String;
      
      private var §8u§:Number;
      
      private var §!#§:Number;
      
      private var §4"V§:Number;
      
      private var §""&§:Number;
      
      private var §&#[§:Boolean = true;
      
      private var §"#7§:String = "cubic_in_out";
      
      public function §0$<§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§6"@§ = param3;
         this.§8u§ = param4;
         this.§!#§ = param5;
         this.§"#7§ = param6;
      }
      
      public function set §@!j§(param1:Boolean) : void
      {
         this.§&#[§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§34§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§6"@§))
            {
               if(_loc4_.name == §=!^§.§;!l§)
               {
                  if(this.§&#[§)
                  {
                     _loc4_.x = -this.§2W§() * this.§<"u§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§2W§() * this.§<"u§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§8u§;
                  _loc4_.y -= this.§!#§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §<"u§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§"#7§)
         {
            case §5#G§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §+"[§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §2W§() : Number
      {
         if(this.§&#[§)
         {
            return this.§4"V§ - §,g§;
         }
         return this.§""&§ - §2b§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§4"V§ = param1;
         this.§""&§ = param2;
      }
      
      override public function clone() : §<#N§
      {
         var _loc1_:§0$<§ = new §0$<§(time,duration,this.§6"@§,this.§8u§,this.§!#§,this.§"#7§);
         _loc1_.§4"V§ = this.§4"V§;
         _loc1_.§""&§ = this.§""&§;
         _loc1_.§&#[§ = this.§&#[§;
         return _loc1_;
      }
   }
}
