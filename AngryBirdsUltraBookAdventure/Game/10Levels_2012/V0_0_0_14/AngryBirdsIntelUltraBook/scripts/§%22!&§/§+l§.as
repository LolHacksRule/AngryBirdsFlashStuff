package §"!&§
{
   import §,6§.§!o§;
   import §,6§.§4d§;
   import §,6§.§5z§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.DisplayObjectContainer;
   import §9E§.Sprite;
   
   public class §+l§ extends §!!%§
   {
      
      public static const §82§:String = "background";
       
      
      private var mName:String;
      
      private var §0!T§:String;
      
      private var §;!@§:Number;
      
      private var §3L§:Number;
      
      private var §>!D§:Number;
      
      private var §7!3§:Number;
      
      private var §4t§:Number = 1.0;
      
      private var § l§:Boolean = true;
      
      public function §+l§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§0!T§ = param4;
         this.§;!@§ = param5;
         this.§3L§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§4t§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §[!D§() : String
      {
         return this.§0!T§;
      }
      
      public function get x() : Number
      {
         return this.§;!@§;
      }
      
      public function get y() : Number
      {
         return this.§3L§;
      }
      
      public function set §6!F§(param1:Boolean) : void
      {
         this.§ l§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!o§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§5z§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §4d§.§,b§(this.§[!D§,param3)))
            {
               if(_loc5_ = param3.§`F§(this.§[!D§))
               {
                  (_loc4_ = new §;!U§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§82§) as Sprite)
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
               if(this.name == §82§)
               {
                  if(!this.§ l§)
                  {
                  }
               }
               _loc4_.scaleX = this.§4t§;
               _loc4_.scaleY = this.§4t§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§>!D§ = param1;
         this.§7!3§ = param2;
      }
      
      override public function clone() : §!!%§
      {
         var _loc1_:§+l§ = new §+l§(time,duration,this.mName,this.§0!T§,this.§;!@§,this.§3L§,this.§4t§);
         _loc1_.§ l§ = this.§ l§;
         _loc1_.§>!D§ = this.§>!D§;
         _loc1_.§7!3§ = this.§7!3§;
         return _loc1_;
      }
   }
}
