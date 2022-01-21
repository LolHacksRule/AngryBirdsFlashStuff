package §%!a§
{
   import §&[§.§&!m§;
   import §2!g§.DisplayObject;
   import §2!g§.Sprite;
   
   public class §8c§ extends §`!3§
   {
      
      public static const §]A§:Number = 1024;
      
      public static const §<!T§:Number = 658;
      
      public static const §=y§:Number = 55;
      
      public static const §3!'§:String = "cubic_in_out";
      
      public static const §+8§:String = "sin_in_out";
      
      public static const §;!3§:String = "none";
       
      
      private var §var §:String;
      
      private var §;b§:Number;
      
      private var §[!5§:Number;
      
      private var §0F§:Number;
      
      private var §;;§:Number;
      
      private var §0!+§:Boolean = true;
      
      private var §'&§:String = "cubic_in_out";
      
      public function §8c§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§var § = param3;
         this.§;b§ = param4;
         this.§[!5§ = param5;
         this.§'&§ = param6;
      }
      
      public function set §8!M§(param1:Boolean) : void
      {
         this.§0!+§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&!m§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§var §))
            {
               if(_loc4_.name == §,!N§.§+!V§)
               {
                  if(this.§0!+§)
                  {
                     _loc4_.x = -this.§=!g§() * this.§^t§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§=!g§() * this.§^t§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§;b§;
                  _loc4_.y -= this.§[!5§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §^t§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§'&§)
         {
            case §3!'§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §+8§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §=!g§() : Number
      {
         if(this.§0!+§)
         {
            return this.§0F§ - §]A§;
         }
         return this.§;;§ - §<!T§;
      }
      
      public function §6!@§(param1:Number, param2:Number) : void
      {
         this.§0F§ = param1;
         this.§;;§ = param2;
      }
      
      override public function clone() : §`!3§
      {
         var _loc1_:§8c§ = new §8c§(time,duration,this.§var §,this.§;b§,this.§[!5§,this.§'&§);
         _loc1_.§0F§ = this.§0F§;
         _loc1_.§;;§ = this.§;;§;
         _loc1_.§0!+§ = this.§0!+§;
         return _loc1_;
      }
   }
}
