package §[!8§
{
   import §&V§.§,w§;
   import §@!=§.DisplayObject;
   import §@!=§.Sprite;
   
   public class §6§ extends §-u§
   {
      
      public static const §!!"§:Number = 1024;
      
      public static const §2G§:Number = 658;
      
      public static const §8N§:Number = 55;
      
      public static const §0U§:String = "cubic_in_out";
      
      public static const §]m§:String = "sin_in_out";
      
      public static const §?!5§:String = "none";
       
      
      private var §'+§:String;
      
      private var §2!2§:Number;
      
      private var §9!3§:Number;
      
      private var §6#§:Number;
      
      private var §5m§:Number;
      
      private var §'W§:Boolean = true;
      
      private var §>F§:String = "cubic_in_out";
      
      public function §6§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§'+§ = param3;
         this.§2!2§ = param4;
         this.§9!3§ = param5;
         this.§>F§ = param6;
      }
      
      public function set §,!@§(param1:Boolean) : void
      {
         this.§'W§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,w§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§'+§))
            {
               if(_loc4_.name == §-^§.§;s§)
               {
                  if(this.§'W§)
                  {
                     _loc4_.x = -this.§^c§() * this.§>!-§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§^c§() * this.§>!-§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§2!2§;
                  _loc4_.y -= this.§9!3§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §>!-§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§>F§)
         {
            case §0U§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §]m§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §^c§() : Number
      {
         if(this.§'W§)
         {
            return this.§6#§ - §!!"§;
         }
         return this.§5m§ - §2G§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§6#§ = param1;
         this.§5m§ = param2;
      }
      
      override public function clone() : §-u§
      {
         var _loc1_:§6§ = new §6§(time,duration,this.§'+§,this.§2!2§,this.§9!3§,this.§>F§);
         _loc1_.§6#§ = this.§6#§;
         _loc1_.§5m§ = this.§5m§;
         _loc1_.§'W§ = this.§'W§;
         return _loc1_;
      }
   }
}
