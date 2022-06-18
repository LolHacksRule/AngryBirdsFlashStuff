package §]f§
{
   import §"a§.§2C§;
   import §"a§.§>X§;
   import §"a§.§^>§;
   import §;q§.DisplayObject;
   import §;q§.DisplayObjectContainer;
   import §;q§.Sprite;
   import §;q§.§[E§;
   
   public class §2a§ extends §6$§
   {
      
      public static const §1_§:String = "background";
       
      
      private var mName:String;
      
      private var §8]§:String;
      
      private var §9r§:Number;
      
      private var §!0§:Number;
      
      private var §<!3§:Number;
      
      private var §5u§:Number;
      
      private var §7@§:Number = 1.0;
      
      private var §"x§:Boolean = true;
      
      public function §2a§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§8]§ = param4;
         this.§9r§ = param5;
         this.§!0§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§7@§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §[!-§() : String
      {
         return this.§8]§;
      }
      
      public function get x() : Number
      {
         return this.§9r§;
      }
      
      public function get y() : Number
      {
         return this.§!0§;
      }
      
      public function set §"z§(param1:Boolean) : void
      {
         this.§"x§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>X§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§^>§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §2C§.§#f§(this.§[!-§,param3)))
            {
               if(_loc5_ = param3.§>]§(this.§[!-§))
               {
                  (_loc4_ = new §[E§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§1_§) as Sprite)
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
               if(this.name == §1_§)
               {
                  if(!this.§"x§)
                  {
                  }
               }
               _loc4_.scaleX = this.§7@§;
               _loc4_.scaleY = this.§7@§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§<!3§ = param1;
         this.§5u§ = param2;
      }
      
      override public function clone() : §6$§
      {
         var _loc1_:§2a§ = new §2a§(time,duration,this.mName,this.§8]§,this.§9r§,this.§!0§,this.§7@§);
         _loc1_.§"x§ = this.§"x§;
         _loc1_.§<!3§ = this.§<!3§;
         _loc1_.§5u§ = this.§5u§;
         return _loc1_;
      }
   }
}
