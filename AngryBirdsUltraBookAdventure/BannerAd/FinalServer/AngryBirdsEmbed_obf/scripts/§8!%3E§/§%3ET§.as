package §8!>§
{
   import §'k§.§ >§;
   import §'k§.§2v§;
   import §'k§.§<f§;
   import §9W§.§6!0§;
   import §9W§.DisplayObject;
   import §9W§.DisplayObjectContainer;
   import §9W§.Sprite;
   
   public class §>T§ extends §1^§
   {
      
      public static const §9Y§:String = "background";
       
      
      private var mName:String;
      
      private var §7e§:String;
      
      private var §<!B§:Number;
      
      private var §,k§:Number;
      
      private var § l§:Number;
      
      private var §4N§:Number;
      
      private var §=#§:Number = 1.0;
      
      private var §+Y§:Boolean = true;
      
      public function §>T§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§7e§ = param4;
         this.§<!B§ = param5;
         this.§,k§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§=#§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §1s§() : String
      {
         return this.§7e§;
      }
      
      public function get x() : Number
      {
         return this.§<!B§;
      }
      
      public function get y() : Number
      {
         return this.§,k§;
      }
      
      public function set §9!$§(param1:Boolean) : void
      {
         this.§+Y§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ >§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§2v§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §<f§.§;!2§(this.§1s§,param3)))
            {
               if(_loc5_ = param3.§8!<§(this.§1s§))
               {
                  (_loc4_ = new §6!0§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§9Y§) as Sprite)
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
               if(this.name == §9Y§)
               {
                  if(!this.§+Y§)
                  {
                  }
               }
               _loc4_.scaleX = this.§=#§;
               _loc4_.scaleY = this.§=#§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§ l§ = param1;
         this.§4N§ = param2;
      }
      
      override public function clone() : §1^§
      {
         var _loc1_:§>T§ = new §>T§(time,duration,this.mName,this.§7e§,this.§<!B§,this.§,k§,this.§=#§);
         _loc1_.§+Y§ = this.§+Y§;
         _loc1_.§ l§ = this.§ l§;
         _loc1_.§4N§ = this.§4N§;
         return _loc1_;
      }
   }
}
