package §%r§
{
   import §#!,§.§0!b§;
   import §#!,§.DisplayObject;
   import §#!,§.DisplayObjectContainer;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.CompositeSpriteParser;
   import §,!7§.TextureManager;
   
   public class §`!Q§ extends §,!b§
   {
      
      public static const §;#§:String = "background";
       
      
      private var mName:String;
      
      private var §&!O§:String;
      
      private var §1X§:Number;
      
      private var §`J§:Number;
      
      private var §,<§:Number;
      
      private var §5,§:Number;
      
      private var §[D§:Number = 1.0;
      
      private var §>![§:Boolean = true;
      
      public function §`!Q§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§&!O§ = param4;
         this.§1X§ = param5;
         this.§`J§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§[D§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §4!_§() : String
      {
         return this.§&!O§;
      }
      
      public function get x() : Number
      {
         return this.§1X§;
      }
      
      public function get y() : Number
      {
         return this.§`J§;
      }
      
      public function set §@!g§(param1:Boolean) : void
      {
         this.§>![§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§ H§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            _loc4_ = CompositeSpriteParser.§]P§(this.§4!_§,param3);
            if(!_loc4_)
            {
               _loc5_ = param3.§]w§(this.§4!_§);
               if(_loc5_)
               {
                  _loc4_ = new §0!b§(_loc5_.texture);
                  _loc4_.pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               _loc6_ = param2.getChildByName(§;#§) as Sprite;
               if(_loc6_)
               {
                  param2 = _loc6_;
               }
               _loc4_.x += this.x;
               _loc4_.y += this.y;
               _loc4_.name = this.name;
               _loc7_ = param2.getChildByName(this.name);
               if(_loc7_)
               {
                  _loc8_ = _loc7_.parent;
                  _loc8_.removeChild(_loc7_,true);
                  _loc8_.addChild(_loc4_);
               }
               else
               {
                  param2.addChild(_loc4_);
               }
               if(this.name == §;#§)
               {
                  if(!this.§>![§)
                  {
                  }
               }
               _loc4_.scaleX = this.§[D§;
               _loc4_.scaleY = this.§[D§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§,<§ = param1;
         this.§5,§ = param2;
      }
      
      override public function clone() : §,!b§
      {
         var _loc1_:§`!Q§ = new §`!Q§(time,duration,this.mName,this.§&!O§,this.§1X§,this.§`J§,this.§[D§);
         _loc1_.§>![§ = this.§>![§;
         _loc1_.§,<§ = this.§,<§;
         _loc1_.§5,§ = this.§5,§;
         return _loc1_;
      }
   }
}
