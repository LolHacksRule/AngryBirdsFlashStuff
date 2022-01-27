package §#R§
{
   import §4!0§.§#^§;
   import §4!0§.§3§;
   import §4!0§.§5!P§;
   import §86§.§?5§;
   import §86§.DisplayObject;
   import §86§.DisplayObjectContainer;
   import §86§.Sprite;
   
   public class §&@§ extends §@i§
   {
      
      public static const §@!6§:String = "background";
       
      
      private var mName:String;
      
      private var §=o§:String;
      
      private var §#$§:Number;
      
      private var §do§:Number;
      
      private var §]!E§:Number;
      
      private var §+?§:Number;
      
      private var §=A§:Number = 1.0;
      
      private var §!!-§:Boolean = true;
      
      public function §&@§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§=o§ = param4;
         this.§#$§ = param5;
         this.§do§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§=A§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §@!;§() : String
      {
         return this.§=o§;
      }
      
      public function get x() : Number
      {
         return this.§#$§;
      }
      
      public function get y() : Number
      {
         return this.§do§;
      }
      
      public function set §!W§(param1:Boolean) : void
      {
         this.§!!-§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§#^§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §5!P§.§`;§(this.§@!;§,param3)))
            {
               if(_loc5_ = param3.§2L§(this.§@!;§))
               {
                  (_loc4_ = new §?5§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§@!6§) as Sprite)
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
               if(this.name == §@!6§)
               {
                  if(!this.§!!-§)
                  {
                  }
               }
               _loc4_.scaleX = this.§=A§;
               _loc4_.scaleY = this.§=A§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§]!E§ = param1;
         this.§+?§ = param2;
      }
      
      override public function clone() : §@i§
      {
         var _loc1_:§&@§ = new §&@§(time,duration,this.mName,this.§=o§,this.§#$§,this.§do§,this.§=A§);
         _loc1_.§!!-§ = this.§!!-§;
         _loc1_.§]!E§ = this.§]!E§;
         _loc1_.§+?§ = this.§+?§;
         return _loc1_;
      }
   }
}
