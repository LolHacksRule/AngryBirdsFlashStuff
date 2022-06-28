package §`!i§
{
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.DisplayObjectContainer;
   import §'!9§.Sprite;
   import §-w§.§+W§;
   import §-w§.§,Q§;
   import §-w§.§]c§;
   
   public class §;!@§ extends §8d§
   {
      
      public static const § 1§:String = "background";
       
      
      private var mName:String;
      
      private var §!0§:String;
      
      private var §,G§:Number;
      
      private var §78§:Number;
      
      private var §'O§:Number;
      
      private var §!!A§:Number;
      
      private var §<q§:Number = 1.0;
      
      private var §&!Y§:Boolean = true;
      
      public function §;!@§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§!0§ = param4;
         this.§,G§ = param5;
         this.§78§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§<q§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §9!U§() : String
      {
         return this.§!0§;
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§78§;
      }
      
      public function set §@!?§(param1:Boolean) : void
      {
         this.§&!Y§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§+W§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §]c§.§!!h§(this.§9!U§,param3)))
            {
               if(_loc5_ = param3.§6u§(this.§9!U§))
               {
                  (_loc4_ = new §?!U§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§ 1§) as Sprite)
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
               if(this.name == § 1§)
               {
                  if(!this.§&!Y§)
                  {
                  }
               }
               _loc4_.scaleX = this.§<q§;
               _loc4_.scaleY = this.§<q§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§'O§ = param1;
         this.§!!A§ = param2;
      }
      
      override public function clone() : §8d§
      {
         var _loc1_:§;!@§ = new §;!@§(time,duration,this.mName,this.§!0§,this.§,G§,this.§78§,this.§<q§);
         _loc1_.§&!Y§ = this.§&!Y§;
         _loc1_.§'O§ = this.§'O§;
         _loc1_.§!!A§ = this.§!!A§;
         return _loc1_;
      }
   }
}
