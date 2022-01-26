package §0R§
{
   import §1n§.§"#§;
   import §1n§.§1D§;
   import §1n§.§5#§;
   import §^V§.§1!,§;
   import §^V§.DisplayObject;
   import §^V§.DisplayObjectContainer;
   import §^V§.Sprite;
   
   public class §1d§ extends §6! §
   {
      
      public static const §0k§:String = "background";
       
      
      private var mName:String;
      
      private var §9!+§:String;
      
      private var §-Y§:Number;
      
      private var §%!;§:Number;
      
      private var §?!#§:Number;
      
      private var §26§:Number;
      
      private var §%2§:Number = 1.0;
      
      private var §7!,§:Boolean = true;
      
      public function §1d§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§9!+§ = param4;
         this.§-Y§ = param5;
         this.§%!;§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§%2§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §`z§() : String
      {
         return this.§9!+§;
      }
      
      public function get x() : Number
      {
         return this.§-Y§;
      }
      
      public function get y() : Number
      {
         return this.§%!;§;
      }
      
      public function set §1c§(param1:Boolean) : void
      {
         this.§7!,§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5#§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§1D§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §"#§.§-"§(this.§`z§,param3)))
            {
               if(_loc5_ = param3.§,Y§(this.§`z§))
               {
                  (_loc4_ = new §1!,§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§0k§) as Sprite)
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
               if(this.name == §0k§)
               {
                  if(!this.§7!,§)
                  {
                  }
               }
               _loc4_.scaleX = this.§%2§;
               _loc4_.scaleY = this.§%2§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§?!#§ = param1;
         this.§26§ = param2;
      }
      
      override public function clone() : §6! §
      {
         var _loc1_:§1d§ = new §1d§(time,duration,this.mName,this.§9!+§,this.§-Y§,this.§%!;§,this.§%2§);
         _loc1_.§7!,§ = this.§7!,§;
         _loc1_.§?!#§ = this.§?!#§;
         _loc1_.§26§ = this.§26§;
         return _loc1_;
      }
   }
}
