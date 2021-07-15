package §4!o§
{
   import § ! §.§5!x§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   
   public class §7!6§ extends §0!c§
   {
      
      public static const §8#§:Number = 1024;
      
      public static const §'+§:Number = 658;
      
      public static const §0!N§:Number = 55;
      
      public static const §>!d§:String = "cubic_in_out";
      
      public static const §'!T§:String = "sin_in_out";
      
      public static const §>l§:String = "none";
       
      
      private var §1!m§:String;
      
      private var §%!3§:Number;
      
      private var §?!e§:Number;
      
      private var §<`§:Number;
      
      private var §#!A§:Number;
      
      private var §>_§:Boolean = true;
      
      private var §^"'§:String = "cubic_in_out";
      
      public function §7!6§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§1!m§ = param3;
         this.§%!3§ = param4;
         this.§?!e§ = param5;
         this.§^"'§ = param6;
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         this.§>_§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!x§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§1!m§))
            {
               if(_loc4_.name == §=!e§.§`]§)
               {
                  if(this.§>_§)
                  {
                     _loc4_.x = -this.§=§() * this.§<!1§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§=§() * this.§<!1§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§%!3§;
                  _loc4_.y -= this.§?!e§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §<!1§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§^"'§)
         {
            case §>!d§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §'!T§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §=§() : Number
      {
         if(this.§>_§)
         {
            return this.§<`§ - §8#§;
         }
         return this.§#!A§ - §'+§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§<`§ = param1;
         this.§#!A§ = param2;
      }
      
      override public function clone() : §0!c§
      {
         var _loc1_:§7!6§ = new §7!6§(time,duration,this.§1!m§,this.§%!3§,this.§?!e§,this.§^"'§);
         _loc1_.§<`§ = this.§<`§;
         _loc1_.§#!A§ = this.§#!A§;
         _loc1_.§>_§ = this.§>_§;
         return _loc1_;
      }
   }
}
