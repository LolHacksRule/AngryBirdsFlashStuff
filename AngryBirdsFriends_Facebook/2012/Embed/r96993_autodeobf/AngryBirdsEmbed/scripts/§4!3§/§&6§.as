package §4!3§
{
   import §6u§.§3W§;
   import §]!6§.DisplayObject;
   import §]!6§.Sprite;
   
   public class §&6§ extends §,d§
   {
      
      public static const §1!D§:Number = 1024;
      
      public static const §#A§:Number = 658;
      
      public static const §5O§:Number = 55;
      
      public static const §%'§:String = "cubic_in_out";
      
      public static const §'z§:String = "sin_in_out";
      
      public static const §>t§:String = "none";
       
      
      private var §6%§:String;
      
      private var §4F§:Number;
      
      private var §1v§:Number;
      
      private var §-!6§:Number;
      
      private var § B§:Number;
      
      private var §-!%§:Boolean = true;
      
      private var §3]§:String = "cubic_in_out";
      
      public function §&6§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§6%§ = param3;
         this.§4F§ = param4;
         this.§1v§ = param5;
         this.§3]§ = param6;
      }
      
      public function set §,I§(param1:Boolean) : void
      {
         this.§-!%§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3W§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§6%§))
            {
               if(_loc4_.name == §0s§.§2m§)
               {
                  if(this.§-!%§)
                  {
                     _loc4_.x = -this.§@w§() * this.§!+§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§@w§() * this.§!+§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§4F§;
                  _loc4_.y -= this.§1v§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §!+§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§3]§)
         {
            case §%'§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §'z§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §@w§() : Number
      {
         if(this.§-!%§)
         {
            return this.§-!6§ - §1!D§;
         }
         return this.§ B§ - §#A§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§-!6§ = param1;
         this.§ B§ = param2;
      }
      
      override public function clone() : §,d§
      {
         var _loc1_:§&6§ = new §&6§(time,duration,this.§6%§,this.§4F§,this.§1v§,this.§3]§);
         _loc1_.§-!6§ = this.§-!6§;
         _loc1_.§ B§ = this.§ B§;
         _loc1_.§-!%§ = this.§-!%§;
         return _loc1_;
      }
   }
}
