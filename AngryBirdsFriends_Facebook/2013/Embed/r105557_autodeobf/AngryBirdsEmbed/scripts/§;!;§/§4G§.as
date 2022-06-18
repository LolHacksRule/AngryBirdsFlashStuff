package §;!;§
{
   public class §4G§
   {
       
      
      public var mName:String;
      
      public var §'%§:String;
      
      public var §?!3§:Number;
      
      public var §in§:Array;
      
      public var §-O§:Number;
      
      public var §94§:Number;
      
      public var §=L§:String;
      
      public var §!C§:String;
      
      public var §^r§:Number;
      
      public var §1O§:String;
      
      public function §4G§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         this.§in§ = new Array();
         this.§-O§ = param3;
         this.§94§ = param4;
         this.§=L§ = param5;
         this.§'%§ = param6;
         this.§?!3§ = param7;
         this.§!C§ = param8;
         for each(_loc11_ in param2.Layer)
         {
            _loc12_ = [];
            for each(_loc13_ in _loc11_.ParticleEmitter)
            {
               _loc12_.push({
                  "id":_loc13_.@id.toString(),
                  "x":Number(_loc13_.@x) || 0,
                  "y":Number(_loc13_.@y) || 0,
                  "rotation":Number(_loc13_.@rotation) || 0,
                  "scale":Number(_loc13_.@scale) || 1,
                  "alpha":Number(_loc13_.@alpha) || 1,
                  "fastForwardsAfterAdd":Number(_loc13_.@fastForwardsAfterAdd) || 0,
                  "isBehindGraphic":_loc13_.@behindGraphic.toString().toLowerCase() == "true"
               });
            }
            this.§`l§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
         }
         this.§in§.reverse();
         this.§^r§ = param9;
         this.§1O§ = param10;
      }
      
      public function §`l§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         this.§in§[this.§in§.length] = new §8+§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
      }
      
      public function §4O§() : Number
      {
         return this.§^r§;
      }
   }
}
