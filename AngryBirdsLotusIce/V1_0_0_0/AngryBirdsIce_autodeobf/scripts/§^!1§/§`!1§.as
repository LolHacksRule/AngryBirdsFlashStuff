package §^!1§
{
   public class §`!1§
   {
       
      
      public var mName:String;
      
      public var §`t§:String;
      
      public var §4u§:Number;
      
      public var §9f§:Array;
      
      public var §1!B§:Number;
      
      public var §?d§:Number;
      
      public var §#n§:String;
      
      public var §1! §:String;
      
      public var §>!G§:Number;
      
      public var §@j§:String;
      
      public function §`!1§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         this.§9f§ = new Array();
         this.§1!B§ = param3;
         this.§?d§ = param4;
         this.§#n§ = param5;
         this.§`t§ = param6;
         this.§4u§ = param7;
         this.§1! § = param8;
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
            this.§0?§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
         }
         this.§9f§.reverse();
         this.§>!G§ = param9;
         this.§@j§ = param10;
      }
      
      public function §0?§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         this.§9f§[this.§9f§.length] = new §?!3§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
      }
      
      public function §`K§() : Number
      {
         return this.§>!G§;
      }
   }
}
