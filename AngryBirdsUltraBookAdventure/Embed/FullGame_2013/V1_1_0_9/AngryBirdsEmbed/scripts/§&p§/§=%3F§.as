package §&p§
{
   import §&o§.§?T§;
   import §&o§.DisplayObject;
   import §&o§.DisplayObjectContainer;
   import §&o§.Sprite;
   import §9K§.§,z§;
   import §9K§.§4!<§;
   import §9K§.§5!H§;
   
   public class §=?§ extends §,K§
   {
      
      public static const §!!-§:String = "background";
       
      
      private var mName:String;
      
      private var §3-§:String;
      
      private var §-`§:Number;
      
      private var §4J§:Number;
      
      private var §[s§:Number;
      
      private var §8!&§:Number;
      
      private var §3!7§:Number = 1.0;
      
      private var §;!#§:Boolean = true;
      
      public function §=?§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§3-§ = param4;
         this.§-`§ = param5;
         this.§4J§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§3!7§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §>m§() : String
      {
         return this.§3-§;
      }
      
      public function get x() : Number
      {
         return this.§-`§;
      }
      
      public function get y() : Number
      {
         return this.§4J§;
      }
      
      public function set §8o§(param1:Boolean) : void
      {
         this.§;!#§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!H§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§,z§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §4!<§.§6!<§(this.§>m§,param3)))
            {
               if(_loc5_ = param3.§3!'§(this.§>m§))
               {
                  (_loc4_ = new §?T§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§!!-§) as Sprite)
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
               if(this.name == §!!-§)
               {
                  if(!this.§;!#§)
                  {
                  }
               }
               _loc4_.scaleX = this.§3!7§;
               _loc4_.scaleY = this.§3!7§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§[s§ = param1;
         this.§8!&§ = param2;
      }
      
      override public function clone() : §,K§
      {
         var _loc1_:§=?§ = new §=?§(time,duration,this.mName,this.§3-§,this.§-`§,this.§4J§,this.§3!7§);
         _loc1_.§;!#§ = this.§;!#§;
         _loc1_.§[s§ = this.§[s§;
         _loc1_.§8!&§ = this.§8!&§;
         return _loc1_;
      }
   }
}
