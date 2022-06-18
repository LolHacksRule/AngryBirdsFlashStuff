package §&-§
{
   import §9!a§.DisplayObject;
   import §9!a§.Sprite;
   import §=0§.§>O§;
   
   public class §5@§ extends §3v§
   {
      
      public static const §8o§:Number = 1024;
      
      public static const §&I§:Number = 658;
      
      public static const §9s§:Number = 55;
      
      public static const §#1§:String = "cubic_in_out";
      
      public static const §2'§:String = "sin_in_out";
      
      public static const §4!#§:String = "none";
       
      
      private var §!![§:String;
      
      private var §!-§:Number;
      
      private var §[4§:Number;
      
      private var §!!V§:Number;
      
      private var §!`§:Number;
      
      private var §7O§:Boolean = true;
      
      private var §%@§:String = "cubic_in_out";
      
      public function §5@§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§!![§ = param3;
         this.§!-§ = param4;
         this.§[4§ = param5;
         this.§%@§ = param6;
      }
      
      public function set §7#§(param1:Boolean) : void
      {
         this.§7O§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>O§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§!![§))
            {
               if(_loc4_.name == §9p§.§<X§)
               {
                  if(this.§7O§)
                  {
                     _loc4_.x = -this.§5!W§() * this.§[! §(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§5!W§() * this.§[! §(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§!-§;
                  _loc4_.y -= this.§[4§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §[! §(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§%@§)
         {
            case §#1§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §2'§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §5!W§() : Number
      {
         if(this.§7O§)
         {
            return this.§!!V§ - §8o§;
         }
         return this.§!`§ - §&I§;
      }
      
      public function § [§(param1:Number, param2:Number) : void
      {
         this.§!!V§ = param1;
         this.§!`§ = param2;
      }
      
      override public function clone() : §3v§
      {
         var _loc1_:§5@§ = new §5@§(time,duration,this.§!![§,this.§!-§,this.§[4§,this.§%@§);
         _loc1_.§!!V§ = this.§!!V§;
         _loc1_.§!`§ = this.§!`§;
         _loc1_.§7O§ = this.§7O§;
         return _loc1_;
      }
   }
}
