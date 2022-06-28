package §?$§
{
   import §1!&§.§&p§;
   import §1!&§.DisplayObject;
   import §1!&§.DisplayObjectContainer;
   import §1!&§.Sprite;
   import §8!?§.§?!B§;
   import §8!?§.CompositeSpriteParser;
   import §8!?§.TextureManager;
   
   public class §=n§ extends §9!'§
   {
      
      public static const §'"§:String = "background";
       
      
      private var mName:String;
      
      private var §^s§:String;
      
      private var §`!Z§:Number;
      
      private var §[§:Number;
      
      private var §^B§:Number;
      
      private var §+!d§:Number;
      
      private var §3!Q§:Number = 1.0;
      
      private var §;>§:Boolean = true;
      
      public function §=n§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§^s§ = param4;
         this.§`!Z§ = param5;
         this.§[§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§3!Q§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §1!R§() : String
      {
         return this.§^s§;
      }
      
      public function get x() : Number
      {
         return this.§`!Z§;
      }
      
      public function get y() : Number
      {
         return this.§[§;
      }
      
      public function set §null §(param1:Boolean) : void
      {
         this.§;>§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§?!B§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            _loc4_ = CompositeSpriteParser.§#t§(this.§1!R§,param3);
            if(!_loc4_)
            {
               _loc5_ = param3.§"!'§(this.§1!R§);
               if(_loc5_)
               {
                  _loc4_ = new §&p§(_loc5_.texture);
                  _loc4_.pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               _loc6_ = param2.getChildByName(§'"§) as Sprite;
               if(_loc6_)
               {
                  param2 = _loc6_;
               }
               _loc4_.x += this.x;
               _loc4_.y += this.y;
               _loc4_.name = this.name;
               _loc7_ = param2.getChildByName(this.name);
               if(_loc7_)
               {
                  _loc8_ = _loc7_.parent;
                  _loc8_.removeChild(_loc7_,true);
                  _loc8_.addChild(_loc4_);
               }
               else
               {
                  param2.addChild(_loc4_);
               }
               if(this.name == §'"§)
               {
                  if(!this.§;>§)
                  {
                  }
               }
               _loc4_.scaleX = this.§3!Q§;
               _loc4_.scaleY = this.§3!Q§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§^B§ = param1;
         this.§+!d§ = param2;
      }
      
      override public function clone() : §9!'§
      {
         var _loc1_:§=n§ = new §=n§(time,duration,this.mName,this.§^s§,this.§`!Z§,this.§[§,this.§3!Q§);
         _loc1_.§;>§ = this.§;>§;
         _loc1_.§^B§ = this.§^B§;
         _loc1_.§+!d§ = this.§+!d§;
         return _loc1_;
      }
   }
}
