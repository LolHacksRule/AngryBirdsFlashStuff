package §<!0§
{
   import §2`§.§%!!§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   
   public class §0!A§ extends §=!?§
   {
      
      public static const §3z§:Number = 1024;
      
      public static const §`!,§:Number = 658;
      
      public static const § ]§:Number = 55;
      
      public static const §"L§:String = "cubic_in_out";
      
      public static const §^!1§:String = "sin_in_out";
      
      public static const §-0§:String = "none";
       
      
      private var §`]§:String;
      
      private var §]!B§:Number;
      
      private var §9=§:Number;
      
      private var §!a§:Number;
      
      private var §2!y§:Number;
      
      private var §4q§:Boolean = true;
      
      private var §#!-§:String = "cubic_in_out";
      
      public function §0!A§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§`]§ = param3;
         this.§]!B§ = param4;
         this.§9=§ = param5;
         this.§#!-§ = param6;
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         this.§4q§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%!!§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§`]§))
            {
               if(_loc4_.name == §%C§.§<!'§)
               {
                  if(this.§4q§)
                  {
                     _loc4_.x = -this.§&!&§() * this.§56§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§&!&§() * this.§56§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§]!B§;
                  _loc4_.y -= this.§9=§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §56§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§#!-§)
         {
            case §"L§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §^!1§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §&!&§() : Number
      {
         if(this.§4q§)
         {
            return this.§!a§ - §3z§;
         }
         return this.§2!y§ - §`!,§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§!a§ = param1;
         this.§2!y§ = param2;
      }
      
      override public function clone() : §=!?§
      {
         var _loc1_:§0!A§ = new §0!A§(time,duration,this.§`]§,this.§]!B§,this.§9=§,this.§#!-§);
         _loc1_.§!a§ = this.§!a§;
         _loc1_.§2!y§ = this.§2!y§;
         _loc1_.§4q§ = this.§4q§;
         return _loc1_;
      }
   }
}
