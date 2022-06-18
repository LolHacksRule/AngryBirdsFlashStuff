package §,!M§
{
   import §#!@§.§0V§;
   import §#!@§.DisplayObject;
   import §#!@§.DisplayObjectContainer;
   import §#!@§.Sprite;
   import §[v§.§'P§;
   import §[v§.§0&§;
   import §[v§.§<D§;
   
   public class §"!F§ extends §;!0§
   {
      
      public static const §]!K§:String = "background";
       
      
      private var mName:String;
      
      private var §#<§:String;
      
      private var §3y§:Number;
      
      private var §6@§:Number;
      
      private var §'o§:Number;
      
      private var §+L§:Number;
      
      private var §0i§:Number = 1.0;
      
      private var §=@§:Boolean = true;
      
      public function §"!F§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§#<§ = param4;
         this.§3y§ = param5;
         this.§6@§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§0i§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §&!#§() : String
      {
         return this.§#<§;
      }
      
      public function get x() : Number
      {
         return this.§3y§;
      }
      
      public function get y() : Number
      {
         return this.§6@§;
      }
      
      public function set §;Q§(param1:Boolean) : void
      {
         this.§=@§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0&§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§'P§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §<D§.§!?§(this.§&!#§,param3)))
            {
               if(_loc5_ = param3.§4`§(this.§&!#§))
               {
                  (_loc4_ = new §0V§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§]!K§) as Sprite)
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
               if(this.name == §]!K§)
               {
                  if(!this.§=@§)
                  {
                  }
               }
               _loc4_.scaleX = this.§0i§;
               _loc4_.scaleY = this.§0i§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§'o§ = param1;
         this.§+L§ = param2;
      }
      
      override public function clone() : §;!0§
      {
         var _loc1_:§"!F§ = new §"!F§(time,duration,this.mName,this.§#<§,this.§3y§,this.§6@§,this.§0i§);
         _loc1_.§=@§ = this.§=@§;
         _loc1_.§'o§ = this.§'o§;
         _loc1_.§+L§ = this.§+L§;
         return _loc1_;
      }
   }
}
