package § d§
{
   import §&!!§.§7N§;
   import §&!!§.§<!'§;
   import §&!!§.§@!E§;
   import §2![§.DisplayObject;
   import §2![§.DisplayObjectContainer;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   
   public class §"!@§ extends §,!+§
   {
      
      public static const §1!o§:String = "background";
       
      
      private var mName:String;
      
      private var §,6§:String;
      
      private var §+p§:Number;
      
      private var §,,§:Number;
      
      private var §3y§:Number;
      
      private var § 5§:Number;
      
      private var §"!d§:Number = 1.0;
      
      private var §3!n§:Boolean = true;
      
      public function §"!@§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§,6§ = param4;
         this.§+p§ = param5;
         this.§,,§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§"!d§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §6h§() : String
      {
         return this.§,6§;
      }
      
      public function get x() : Number
      {
         return this.§+p§;
      }
      
      public function get y() : Number
      {
         return this.§,,§;
      }
      
      public function set §#! §(param1:Boolean) : void
      {
         this.§3!n§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§<!'§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§7N§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §@!E§.§6!o§(this.§6h§,param3)))
            {
               if(_loc5_ = param3.§^!C§(this.§6h§))
               {
                  (_loc4_ = new §[!U§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§1!o§) as Sprite)
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
               if(this.name == §1!o§)
               {
                  if(!this.§3!n§)
                  {
                  }
               }
               _loc4_.scaleX = this.§"!d§;
               _loc4_.scaleY = this.§"!d§;
            }
            return false;
         }
         return true;
      }
      
      public function §]f§(param1:Number, param2:Number) : void
      {
         this.§3y§ = param1;
         this.§ 5§ = param2;
      }
      
      override public function clone() : §,!+§
      {
         var _loc1_:§"!@§ = new §"!@§(time,duration,this.mName,this.§,6§,this.§+p§,this.§,,§,this.§"!d§);
         _loc1_.§3!n§ = this.§3!n§;
         _loc1_.§3y§ = this.§3y§;
         _loc1_.§ 5§ = this.§ 5§;
         return _loc1_;
      }
   }
}
