package §?$§
{
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §8!?§.TextureManager;
   
   public class §'y§ extends §9!'§
   {
      
      public static const SCREEN_WIDTH:Number = 1024;
      
      public static const SCREEN_HEIGHT:Number = 658;
      
      public static const §`C§:Number = 55;
      
      public static const § ]§:String = "cubic_in_out";
      
      public static const §#!P§:String = "sin_in_out";
      
      public static const §@!%§:String = "none";
       
      
      private var §^s§:String;
      
      private var §`!Z§:Number;
      
      private var §[§:Number;
      
      private var §^B§:Number;
      
      private var §+!d§:Number;
      
      private var §=I§:Boolean = true;
      
      private var §9!Q§:String = "cubic_in_out";
      
      public function §'y§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§^s§ = param3;
         this.§`!Z§ = param4;
         this.§[§ = param5;
         this.§9!Q§ = param6;
      }
      
      public function set §#!6§(param1:Boolean) : void
      {
         this.§=I§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            _loc4_ = param2.getChildByName(this.§^s§);
            if(_loc4_)
            {
               if(_loc4_.name == §=n§.§'"§)
               {
                  if(this.§=I§)
                  {
                     _loc4_.x = -this.§5"§() * this.§9s§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§5"§() * this.§9s§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§`!Z§;
                  _loc4_.y -= this.§[§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §9s§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§9!Q§)
         {
            case § ]§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §#!P§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §5"§() : Number
      {
         if(this.§=I§)
         {
            return this.§^B§ - SCREEN_WIDTH;
         }
         return this.§+!d§ - SCREEN_HEIGHT;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§^B§ = param1;
         this.§+!d§ = param2;
      }
      
      override public function clone() : §9!'§
      {
         var _loc1_:§'y§ = new §'y§(time,duration,this.§^s§,this.§`!Z§,this.§[§,this.§9!Q§);
         _loc1_.§^B§ = this.§^B§;
         _loc1_.§+!d§ = this.§+!d§;
         _loc1_.§=I§ = this.§=I§;
         return _loc1_;
      }
   }
}
