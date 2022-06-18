package §6"§
{
   public class §7%§
   {
       
      
      public var mName:String;
      
      public var §"O§:String;
      
      public var §3D§:Number;
      
      public var §&+§:Array;
      
      public var §^c§:Number;
      
      public var §5>§:Number;
      
      public var §"!,§:String;
      
      public var §5v§:String;
      
      public var §6!4§:Number;
      
      public var §8!;§:String;
      
      public function §7%§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         this.§&+§ = new Array();
         this.§^c§ = param3;
         this.§5>§ = param4;
         this.§"!,§ = param5;
         this.§"O§ = param6;
         this.§3D§ = param7;
         this.§5v§ = param8;
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
            this.§?1§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
         }
         this.§&+§.reverse();
         this.§6!4§ = param9;
         this.§8!;§ = param10;
      }
      
      public function §?1§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         this.§&+§[this.§&+§.length] = new §>!5§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
      }
      
      public function §<2§() : Number
      {
         return this.§6!4§;
      }
   }
}
