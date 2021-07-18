package §`",§
{
   import §+!-§.§7"#§;
   import §+!-§.DisplayObject;
   import §+!-§.DisplayObjectContainer;
   import §+!-§.Sprite;
   import §;"7§.§+!I§;
   import §;"7§.§3"#§;
   import §;"7§.§="<§;
   
   public class §%!!§ extends §7!s§
   {
      
      public static const §=[§:String = "background";
       
      
      private var mName:String;
      
      private var §#^§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §",§:Number;
      
      private var §%"0§:Number;
      
      private var §@f§:Number = 1.0;
      
      private var §^"+§:Boolean = true;
      
      public function §%!!§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§#^§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§@f§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §,X§() : String
      {
         return this.§#^§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §use §(param1:Boolean) : void
      {
         this.§^"+§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§="<§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§+!I§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §3"#§.§ !&§(this.§,X§,param3)))
            {
               if(_loc5_ = param3.§5!!§(this.§,X§))
               {
                  (_loc4_ = new §7"#§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§=[§) as Sprite)
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
               if(this.name == §=[§)
               {
                  if(!this.§^"+§)
                  {
                  }
               }
               _loc4_.scaleX = this.§@f§;
               _loc4_.scaleY = this.§@f§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§",§ = param1;
         this.§%"0§ = param2;
      }
      
      override public function clone() : §7!s§
      {
         var _loc1_:§%!!§ = new §%!!§(time,duration,this.mName,this.§#^§,this.mX,this.mY,this.§@f§);
         _loc1_.§^"+§ = this.§^"+§;
         _loc1_.§",§ = this.§",§;
         _loc1_.§%"0§ = this.§%"0§;
         return _loc1_;
      }
   }
}
