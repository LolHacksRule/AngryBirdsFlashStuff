package §0=§
{
   import §&!v§.DisplayObject;
   import §&!v§.DisplayObjectContainer;
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §7!j§.§'#'§;
   import §7!j§.§'0§;
   import §7!j§.§[#%§;
   
   public class §^#s§ extends §6$'§
   {
      
      public static const §,#C§:String = "background";
       
      
      private var §;!p§:String;
      
      private var §""4§:String;
      
      private var §?!l§:Number;
      
      private var §`"T§:Number;
      
      private var § ";§:Number;
      
      private var §;!U§:Number;
      
      private var §%#s§:Number = 1.0;
      
      private var §3!L§:Boolean = true;
      
      public function §^#s§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.§;!p§ = param3;
         this.§""4§ = param4;
         this.§?!l§ = param5;
         this.§`"T§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§%#s§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.§;!p§;
      }
      
      public function get imageName() : String
      {
         return this.§""4§;
      }
      
      public function get x() : Number
      {
         return this.§?!l§;
      }
      
      public function get y() : Number
      {
         return this.§`"T§;
      }
      
      public function set §'"m§(param1:Boolean) : void
      {
         this.§3!L§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'0§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§'#'§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §[#%§.§&G§(this.imageName,param3)))
            {
               if(_loc5_ = param3.getTexture(this.imageName))
               {
                  (_loc4_ = new Image(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§,#C§) as Sprite)
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
               if(this.name == §,#C§)
               {
                  if(!this.§3!L§)
                  {
                  }
               }
               _loc4_.scaleX = this.§%#s§;
               _loc4_.scaleY = this.§%#s§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§ ";§ = param1;
         this.§;!U§ = param2;
      }
      
      override public function clone() : §6$'§
      {
         var _loc1_:§^#s§ = new §^#s§(time,duration,this.§;!p§,this.§""4§,this.§?!l§,this.§`"T§,this.§%#s§);
         _loc1_.§3!L§ = this.§3!L§;
         _loc1_.§ ";§ = this.§ ";§;
         _loc1_.§;!U§ = this.§;!U§;
         return _loc1_;
      }
   }
}
