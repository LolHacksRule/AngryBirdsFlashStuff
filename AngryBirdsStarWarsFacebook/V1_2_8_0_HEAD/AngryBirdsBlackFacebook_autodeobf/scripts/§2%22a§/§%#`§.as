package §2"a§
{
   import §!!U§.§#"t§;
   import §!!U§.DisplayObject;
   import §!!U§.DisplayObjectContainer;
   import §!!U§.Sprite;
   import §7!F§.§7§;
   import §7!F§.§8!W§;
   import §7!F§.§^"U§;
   
   public class §%#`§ extends §,^§
   {
      
      public static const §1R§:String = "background";
       
      
      private var mName:String;
      
      private var §-!`§:String;
      
      private var §8!+§:Number;
      
      private var §=!Z§:Number;
      
      private var §6"?§:Number;
      
      private var §[!4§:Number;
      
      private var §-#G§:Number = 1.0;
      
      private var §5#E§:Boolean = true;
      
      public function §%#`§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§-!`§ = param4;
         this.§8!+§ = param5;
         this.§=!Z§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§-#G§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §<"4§() : String
      {
         return this.§-!`§;
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function set §?"`§(param1:Boolean) : void
      {
         this.§5#E§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7#5§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§8!W§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §^"U§.§]!6§(this.§<"4§,param3)))
            {
               if(_loc5_ = param3.getTexture(this.§<"4§))
               {
                  (_loc4_ = new §#"t§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§1R§) as Sprite)
               {
                  param2 = _loc6_;
               }
               _loc4_.x += this.x;
               _loc4_.y += this.y;
               _loc4_.name = this.name;
               if(_loc7_ = param2.getChildByName(this.name))
               {
                  (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                  _loc8_.addChild(_loc4_);
               }
               else
               {
                  param2.addChild(_loc4_);
               }
               if(this.name == §1R§)
               {
                  if(!this.§5#E§)
                  {
                  }
               }
               _loc4_.scaleX = this.§-#G§;
               _loc4_.scaleY = this.§-#G§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§6"?§ = param1;
         this.§[!4§ = param2;
      }
      
      override public function clone() : §,^§
      {
         var _loc1_:§%#`§ = new §%#`§(time,duration,this.mName,this.§-!`§,this.§8!+§,this.§=!Z§,this.§-#G§);
         _loc1_.§5#E§ = this.§5#E§;
         _loc1_.§6"?§ = this.§6"?§;
         _loc1_.§[!4§ = this.§[!4§;
         return _loc1_;
      }
   }
}
