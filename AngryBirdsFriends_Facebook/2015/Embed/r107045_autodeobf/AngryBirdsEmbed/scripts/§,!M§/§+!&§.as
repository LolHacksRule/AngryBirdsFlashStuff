package §,!M§
{
   import §#!@§.DisplayObject;
   import §#!@§.Sprite;
   import §[v§.§0&§;
   
   public class §+!&§ extends §;!0§
   {
      
      public static const §71§:Number = 1024;
      
      public static const §=6§:Number = 658;
      
      public static const §1S§:Number = 55;
      
      public static const §each §:String = "cubic_in_out";
      
      public static const §0v§:String = "sin_in_out";
      
      public static const § I§:String = "none";
       
      
      private var §#<§:String;
      
      private var §3y§:Number;
      
      private var §6@§:Number;
      
      private var §'o§:Number;
      
      private var §+L§:Number;
      
      private var § X§:Boolean = true;
      
      private var §[`§:String = "cubic_in_out";
      
      public function §+!&§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§#<§ = param3;
         this.§3y§ = param4;
         this.§6@§ = param5;
         this.§[`§ = param6;
      }
      
      public function set §%z§(param1:Boolean) : void
      {
         this.§ X§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0&§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§#<§))
            {
               if(_loc4_.name == §"!F§.§]!K§)
               {
                  if(this.§ X§)
                  {
                     _loc4_.x = -this.§6s§() * this.§^[§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§6s§() * this.§^[§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§3y§;
                  _loc4_.y -= this.§6@§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §^[§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§[`§)
         {
            case §each §:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §0v§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §6s§() : Number
      {
         if(this.§ X§)
         {
            return this.§'o§ - §71§;
         }
         return this.§+L§ - §=6§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§'o§ = param1;
         this.§+L§ = param2;
      }
      
      override public function clone() : §;!0§
      {
         var _loc1_:§+!&§ = new §+!&§(time,duration,this.§#<§,this.§3y§,this.§6@§,this.§[`§);
         _loc1_.§'o§ = this.§'o§;
         _loc1_.§+L§ = this.§+L§;
         _loc1_.§ X§ = this.§ X§;
         return _loc1_;
      }
   }
}
