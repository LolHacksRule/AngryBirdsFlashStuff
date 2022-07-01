package §9!e§
{
   import §7q§.§0!§;
   import §7q§.DisplayObject;
   import §7q§.DisplayObjectContainer;
   import §7q§.Sprite;
   import §;!<§.§7!f§;
   import §;!<§.§<!D§;
   import §;!<§.§^$§;
   
   public class §4&§ extends §<!>§
   {
      
      public static const §0g§:String = "background";
       
      
      private var mName:String;
      
      private var §4!U§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §5!T§:Number;
      
      private var §7X§:Number;
      
      private var §!b§:Number = 1.0;
      
      private var §5T§:Boolean = true;
      
      public function §4&§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§4!U§ = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§!b§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §8!W§() : String
      {
         return this.§4!U§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §=3§(param1:Boolean) : void
      {
         this.§5T§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!f§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§<!D§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §^$§.§2!v§(this.§8!W§,param3)))
            {
               if(_loc5_ = param3.§>",§(this.§8!W§))
               {
                  (_loc4_ = new §0!§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§0g§) as Sprite)
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
               if(this.name == §0g§)
               {
                  if(!this.§5T§)
                  {
                  }
               }
               _loc4_.scaleX = this.§!b§;
               _loc4_.scaleY = this.§!b§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§5!T§ = param1;
         this.§7X§ = param2;
      }
      
      override public function clone() : §<!>§
      {
         var _loc1_:§4&§ = new §4&§(time,duration,this.mName,this.§4!U§,this.mX,this.mY,this.§!b§);
         _loc1_.§5T§ = this.§5T§;
         _loc1_.§5!T§ = this.§5!T§;
         _loc1_.§7X§ = this.§7X§;
         return _loc1_;
      }
   }
}
