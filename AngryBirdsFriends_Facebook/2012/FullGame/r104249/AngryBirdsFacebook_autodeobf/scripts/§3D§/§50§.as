package §3D§
{
   import §#S§.§!K§;
   import §#S§.§6!r§;
   import §#S§.§?!?§;
   import §]!v§.§'!=§;
   import §]!v§.DisplayObject;
   import §]!v§.DisplayObjectContainer;
   import §]!v§.Sprite;
   
   public class §50§ extends §3T§
   {
      
      public static const §@j§:String = "background";
       
      
      private var mName:String;
      
      private var §-"+§:String;
      
      private var §"""§:Number;
      
      private var §5!J§:Number;
      
      private var §=!c§:Number;
      
      private var §+B§:Number;
      
      private var §3!P§:Number = 1.0;
      
      private var §;!d§:Boolean = true;
      
      public function §50§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§-"+§ = param4;
         this.§"""§ = param5;
         this.§5!J§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§3!P§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §!![§() : String
      {
         return this.§-"+§;
      }
      
      public function get x() : Number
      {
         return this.§"""§;
      }
      
      public function get y() : Number
      {
         return this.§5!J§;
      }
      
      public function set §^i§(param1:Boolean) : void
      {
         this.§;!d§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?!?§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§6!r§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §!K§.§'!^§(this.§!![§,param3)))
            {
               if(_loc5_ = param3.§'"@§(this.§!![§))
               {
                  (_loc4_ = new §'!=§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§@j§) as Sprite)
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
               if(this.name == §@j§)
               {
                  if(!this.§;!d§)
                  {
                  }
               }
               _loc4_.scaleX = this.§3!P§;
               _loc4_.scaleY = this.§3!P§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§=!c§ = param1;
         this.§+B§ = param2;
      }
      
      override public function clone() : §3T§
      {
         var _loc1_:§50§ = new §50§(time,duration,this.mName,this.§-"+§,this.§"""§,this.§5!J§,this.§3!P§);
         _loc1_.§;!d§ = this.§;!d§;
         _loc1_.§=!c§ = this.§=!c§;
         _loc1_.§+B§ = this.§+B§;
         return _loc1_;
      }
   }
}
