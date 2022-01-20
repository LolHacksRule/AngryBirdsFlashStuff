package §8%§
{
   import §9`§.§#U§;
   import §9`§.§8!P§;
   import §9`§.§^p§;
   import §`!n§.§+i§;
   import §`!n§.DisplayObject;
   import §`!n§.DisplayObjectContainer;
   import §`!n§.Sprite;
   
   public class §3!5§ extends §]p§
   {
      
      public static const §1Z§:String = "background";
       
      
      private var mName:String;
      
      private var §8!F§:String;
      
      private var §=y§:Number;
      
      private var §#J§:Number;
      
      private var §9E§:Number;
      
      private var §;`§:Number;
      
      private var §#,§:Number = 1.0;
      
      private var §+d§:Boolean = true;
      
      public function §3!5§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§8!F§ = param4;
         this.§=y§ = param5;
         this.§#J§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§#,§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §4'§() : String
      {
         return this.§8!F§;
      }
      
      public function get x() : Number
      {
         return this.§=y§;
      }
      
      public function get y() : Number
      {
         return this.§#J§;
      }
      
      public function set §+!K§(param1:Boolean) : void
      {
         this.§+d§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#U§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§8!P§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §^p§.§9!0§(this.§4'§,param3)))
            {
               if(_loc5_ = param3.§#P§(this.§4'§))
               {
                  (_loc4_ = new §+i§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§1Z§) as Sprite)
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
               if(this.name == §1Z§)
               {
                  if(!this.§+d§)
                  {
                  }
               }
               _loc4_.scaleX = this.§#,§;
               _loc4_.scaleY = this.§#,§;
            }
            return false;
         }
         return true;
      }
      
      public function §+Y§(param1:Number, param2:Number) : void
      {
         this.§9E§ = param1;
         this.§;`§ = param2;
      }
      
      override public function clone() : §]p§
      {
         var _loc1_:§3!5§ = new §3!5§(time,duration,this.mName,this.§8!F§,this.§=y§,this.§#J§,this.§#,§);
         _loc1_.§+d§ = this.§+d§;
         _loc1_.§9E§ = this.§9E§;
         _loc1_.§;`§ = this.§;`§;
         return _loc1_;
      }
   }
}
