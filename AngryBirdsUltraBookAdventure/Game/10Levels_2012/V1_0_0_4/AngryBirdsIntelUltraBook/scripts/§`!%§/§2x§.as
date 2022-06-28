package §`!%§
{
   import §1e§.§5m§;
   import §3!8§.§#!B§;
   import §7r§.§#!q§;
   import §7r§.Item;
   import §89§.§,;§;
   import §89§.§7A§;
   import §finally§.§4!S§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §2x§ implements §#!B§
   {
       
      
      private var §4S§:Array;
      
      private var §<"§:Boolean = false;
      
      public function §2x§()
      {
         this.§4S§ = [];
         super();
      }
      
      public function §-'§() : void
      {
         var object:Object = null;
         this.§<"§ = true;
         for each(object in this.§4S§)
         {
            try
            {
               this.render(object.avatarString,object.callBack,object.imageSize,object.ignoreBackground);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function § !-§() : void
      {
         this.§<"§ = true;
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false) : BitmapData
      {
         var _loc5_:Sprite = null;
         var _loc6_:§6!_§ = null;
         var _loc7_:Array = null;
         var _loc8_:§#!q§ = null;
         var _loc9_:Array = null;
         var _loc10_:§,;§ = null;
         var _loc11_:§7A§ = null;
         var _loc12_:Item = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:BitmapData = null;
         var _loc16_:§7A§ = null;
         var _loc17_:Item = null;
         var _loc18_:Matrix = null;
         if(!this.§<"§)
         {
            this.§4S§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc5_ = new Sprite();
         _loc6_ = new §6!_§();
         _loc7_ = [];
         for each(_loc8_ in §6!_§.§`;§().characters)
         {
            _loc16_ = new §7A§(_loc8_);
            _loc7_.push(_loc16_);
         }
         _loc9_ = §4!S§.§`x§(param1);
         _loc10_ = new §,;§();
         _loc5_.addChild(_loc10_);
         for each(_loc12_ in _loc9_)
         {
            if(_loc12_.§@§ == "CategoryBirds")
            {
               _loc11_ = _loc10_.§^7§(_loc12_.§&!X§,§5m§.§2V§,"CategoryBirds",_loc7_,100,170,true);
            }
         }
         if(param4)
         {
            _loc11_.§1!3§();
         }
         _loc13_ = param3 * 0.4;
         _loc14_ = param3 / 100 / 2;
         _loc15_ = new BitmapData(param3 + _loc13_,param3 + _loc13_,true,16777215);
         if(_loc11_)
         {
            for each(_loc17_ in _loc9_)
            {
               if(_loc17_.§@§ != "CategoryBirds" && _loc17_.§@§ != "CategoryBackgrounds")
               {
                  _loc11_.§9!r§(_loc17_);
               }
               if(_loc17_.§@§ == "CategoryBackgrounds")
               {
                  _loc11_.§&!x§(_loc17_.§&!X§);
               }
            }
            (_loc18_ = new Matrix()).scale(_loc14_,_loc14_);
            _loc18_.translate(_loc13_ / 2,_loc13_ / 2);
            _loc15_.draw(_loc10_,_loc18_,null,null,null,true);
         }
         if(param2 != null)
         {
            param2(_loc15_);
         }
         return _loc15_;
      }
   }
}
