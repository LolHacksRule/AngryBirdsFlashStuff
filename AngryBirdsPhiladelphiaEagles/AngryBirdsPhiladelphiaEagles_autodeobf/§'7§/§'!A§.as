package §'7§
{
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   
   public class §'!A§ extends §@!F§
   {
      
      public static const §-p§:Number = 1024;
      
      public static const §5!9§:Number = 658;
      
      public static const §throw§:Number = 55;
      
      public static const §#!"§:String = "cubic_in_out";
      
      public static const §]>§:String = "sin_in_out";
      
      public static const §6!9§:String = "none";
       
      
      private var §4!6§:String;
      
      private var §]!B§:Number;
      
      private var §5G§:Number;
      
      private var §6! §:Number;
      
      private var §@g§:Number;
      
      private var §'!5§:Boolean = true;
      
      private var §6!'§:String = "cubic_in_out";
      
      public function §'!A§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§4!6§ = param3;
         this.§]!B§ = param4;
         this.§5G§ = param5;
         this.§6!'§ = param6;
      }
      
      public function set §9I§(param1:Boolean) : void
      {
         this.§'!5§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'?§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4!6§))
            {
               if(_loc4_.name == §3g§.§,V§)
               {
                  if(this.§'!5§)
                  {
                     _loc4_.x = -this.§?!5§() * this.§^!8§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§?!5§() * this.§^!8§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§]!B§;
                  _loc4_.y -= this.§5G§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §^!8§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§6!'§)
         {
            case §#!"§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §]>§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §?!5§() : Number
      {
         if(this.§'!5§)
         {
            return this.§6! § - §-p§;
         }
         return this.§@g§ - §5!9§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§6! § = param1;
         this.§@g§ = param2;
      }
      
      override public function clone() : §@!F§
      {
         var _loc1_:§'!A§ = new §'!A§(time,duration,this.§4!6§,this.§]!B§,this.§5G§,this.§6!'§);
         _loc1_.§6! § = this.§6! §;
         _loc1_.§@g§ = this.§@g§;
         _loc1_.§'!5§ = this.§'!5§;
         return _loc1_;
      }
   }
}
