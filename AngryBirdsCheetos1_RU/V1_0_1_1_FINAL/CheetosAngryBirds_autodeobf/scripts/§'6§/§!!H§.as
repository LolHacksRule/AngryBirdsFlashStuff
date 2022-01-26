package §'6§
{
   import §3§.§4!!§;
   import §3§.DisplayObject;
   import §3§.DisplayObjectContainer;
   import §3§.Sprite;
   import §`n§.§#H§;
   import §`n§.§6o§;
   import §`n§.§`1§;
   
   public class §!!H§ extends §+v§
   {
      
      public static const §2!0§:String = "background";
       
      
      private var mName:String;
      
      private var §[5§:String;
      
      private var § W§:Number;
      
      private var §9!9§:Number;
      
      private var §=!T§:Number;
      
      private var §&n§:Number;
      
      private var §+F§:Number = 1.0;
      
      private var §,>§:Boolean = true;
      
      public function §!!H§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§[5§ = param4;
         this.§ W§ = param5;
         this.§9!9§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§+F§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §1K§() : String
      {
         return this.§[5§;
      }
      
      public function get x() : Number
      {
         return this.§ W§;
      }
      
      public function get y() : Number
      {
         return this.§9!9§;
      }
      
      public function set §>g§(param1:Boolean) : void
      {
         this.§,>§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#H§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§6o§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §`1§.§;!$§(this.§1K§,param3)))
            {
               if(_loc5_ = param3.§&3§(this.§1K§))
               {
                  (_loc4_ = new §4!!§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§2!0§) as Sprite)
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
               if(this.name == §2!0§)
               {
                  if(!this.§,>§)
                  {
                  }
               }
               _loc4_.scaleX = this.§+F§;
               _loc4_.scaleY = this.§+F§;
            }
            return false;
         }
         return true;
      }
      
      public function § d§(param1:Number, param2:Number) : void
      {
         this.§=!T§ = param1;
         this.§&n§ = param2;
      }
      
      override public function clone() : §+v§
      {
         var _loc1_:§!!H§ = new §!!H§(time,duration,this.mName,this.§[5§,this.§ W§,this.§9!9§,this.§+F§);
         _loc1_.§,>§ = this.§,>§;
         _loc1_.§=!T§ = this.§=!T§;
         _loc1_.§&n§ = this.§&n§;
         return _loc1_;
      }
   }
}
