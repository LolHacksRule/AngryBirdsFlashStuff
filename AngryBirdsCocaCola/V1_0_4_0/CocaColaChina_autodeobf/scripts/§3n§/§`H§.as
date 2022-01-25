package §3n§
{
   import § !K§.§5+§;
   import § !K§.DisplayObject;
   import § !K§.DisplayObjectContainer;
   import § !K§.Sprite;
   import §9!Y§.§!q§;
   import §9!Y§.§"#§;
   import §9!Y§.§'S§;
   
   public class §`H§ extends §'0§
   {
      
      public static const §>f§:String = "background";
       
      
      private var mName:String;
      
      private var §9q§:String;
      
      private var §03§:Number;
      
      private var §5,§:Number;
      
      private var §3§:Number;
      
      private var §=!=§:Number;
      
      private var §!;§:Number = 1.0;
      
      private var §+!a§:Boolean = true;
      
      public function §`H§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§9q§ = param4;
         this.§03§ = param5;
         this.§5,§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§!;§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §6!5§() : String
      {
         return this.§9q§;
      }
      
      public function get x() : Number
      {
         return this.§03§;
      }
      
      public function get y() : Number
      {
         return this.§5,§;
      }
      
      public function set §7g§(param1:Boolean) : void
      {
         this.§+!a§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!q§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§"#§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §'S§.§;6§(this.§6!5§,param3)))
            {
               if(_loc5_ = param3.§?!&§(this.§6!5§))
               {
                  (_loc4_ = new §5+§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§>f§) as Sprite)
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
               if(this.name == §>f§)
               {
                  if(!this.§+!a§)
                  {
                  }
               }
               _loc4_.scaleX = this.§!;§;
               _loc4_.scaleY = this.§!;§;
            }
            return false;
         }
         return true;
      }
      
      public function §9![§(param1:Number, param2:Number) : void
      {
         this.§3§ = param1;
         this.§=!=§ = param2;
      }
      
      override public function clone() : §'0§
      {
         var _loc1_:§`H§ = new §`H§(time,duration,this.mName,this.§9q§,this.§03§,this.§5,§,this.§!;§);
         _loc1_.§+!a§ = this.§+!a§;
         _loc1_.§3§ = this.§3§;
         _loc1_.§=!=§ = this.§=!=§;
         return _loc1_;
      }
   }
}
