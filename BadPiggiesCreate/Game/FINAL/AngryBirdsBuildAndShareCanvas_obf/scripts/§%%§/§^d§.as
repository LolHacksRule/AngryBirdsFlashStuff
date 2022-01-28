package §%%§
{
   import §&"5§.§4!h§;
   import §&"5§.§6!L§;
   import §&"5§.§7!P§;
   import §default§.§=!Z§;
   import §default§.DisplayObject;
   import §default§.DisplayObjectContainer;
   import §default§.Sprite;
   
   public class §^d§ extends §#K§
   {
      
      public static const §8Z§:String = "background";
       
      
      private var mName:String;
      
      private var §3!3§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §7!T§:Number;
      
      private var §>w§:Number;
      
      private var §,t§:Number = 1.0;
      
      private var §2!6§:Boolean = true;
      
      public function §^d§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§3!3§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§,t§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §^!"§() : String
      {
         return this.§3!3§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §1S§(param1:Boolean) : void
      {
         this.§2!6§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§6!L§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §4!h§.§4!t§(this.§^!"§,param3)))
            {
               if(_loc5_ = param3.§12§(this.§^!"§))
               {
                  (_loc4_ = new §=!Z§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§8Z§) as Sprite)
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
               if(this.name == §8Z§)
               {
                  if(!this.§2!6§)
                  {
                  }
               }
               _loc4_.scaleX = this.§,t§;
               _loc4_.scaleY = this.§,t§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§7!T§ = param1;
         this.§>w§ = param2;
      }
      
      override public function clone() : §#K§
      {
         var _loc1_:§^d§ = new §^d§(time,duration,this.mName,this.§3!3§,this.mX,this.mY,this.§,t§);
         _loc1_.§2!6§ = this.§2!6§;
         _loc1_.§7!T§ = this.§7!T§;
         _loc1_.§>w§ = this.§>w§;
         return _loc1_;
      }
   }
}
