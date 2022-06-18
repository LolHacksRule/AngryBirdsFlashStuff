package §&-§
{
   import §9!a§.§"z§;
   import §9!a§.DisplayObject;
   import §9!a§.DisplayObjectContainer;
   import §9!a§.Sprite;
   import §=0§.§6j§;
   import §=0§.§>O§;
   import §=0§.§^L§;
   
   public class §9p§ extends §3v§
   {
      
      public static const §<X§:String = "background";
       
      
      private var mName:String;
      
      private var §!![§:String;
      
      private var §!-§:Number;
      
      private var §[4§:Number;
      
      private var §!!V§:Number;
      
      private var §!`§:Number;
      
      private var §&>§:Number = 1.0;
      
      private var §5y§:Boolean = true;
      
      public function §9p§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§!![§ = param4;
         this.§!-§ = param5;
         this.§[4§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§&>§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §;!]§() : String
      {
         return this.§!![§;
      }
      
      public function get x() : Number
      {
         return this.§!-§;
      }
      
      public function get y() : Number
      {
         return this.§[4§;
      }
      
      public function set §2!$§(param1:Boolean) : void
      {
         this.§5y§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>O§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§^L§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §6j§.§"Y§(this.§;!]§,param3)))
            {
               if(_loc5_ = param3.§ r§(this.§;!]§))
               {
                  (_loc4_ = new §"z§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§<X§) as Sprite)
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
               if(this.name == §<X§)
               {
                  if(!this.§5y§)
                  {
                  }
               }
               _loc4_.scaleX = this.§&>§;
               _loc4_.scaleY = this.§&>§;
            }
            return false;
         }
         return true;
      }
      
      public function § [§(param1:Number, param2:Number) : void
      {
         this.§!!V§ = param1;
         this.§!`§ = param2;
      }
      
      override public function clone() : §3v§
      {
         var _loc1_:§9p§ = new §9p§(time,duration,this.mName,this.§!![§,this.§!-§,this.§[4§,this.§&>§);
         _loc1_.§5y§ = this.§5y§;
         _loc1_.§!!V§ = this.§!!V§;
         _loc1_.§!`§ = this.§!`§;
         return _loc1_;
      }
   }
}
