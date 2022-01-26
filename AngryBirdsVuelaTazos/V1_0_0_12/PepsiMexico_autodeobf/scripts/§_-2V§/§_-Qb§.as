package §_-2V§
{
   public class §_-Qb§
   {
       
      
      public var mName:String;
      
      public var §_-Cv§:String;
      
      public var §_-Mp§:Number;
      
      public var §_-9E§:Array;
      
      public var §_-iq§:Number;
      
      public var §_-2l§:Number;
      
      public var § in§:String;
      
      public var §_-TA§:String;
      
      public var §_-Vh§:Number;
      
      public var §_-Ui§:String;
      
      public function §_-Qb§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         this.§_-9E§ = new Array();
         this.§_-iq§ = param3;
         this.§_-2l§ = param4;
         this.§ in§ = param5;
         this.§_-Cv§ = param6;
         this.§_-Mp§ = param7;
         this.§_-TA§ = param8;
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
            this.§_-4K§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static == "true",_loc11_.@scale,_loc11_.@tileable != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_);
         }
         this.§_-9E§.reverse();
         this.§_-Vh§ = param9;
         this.§_-Ui§ = param10;
      }
      
      public function §_-4K§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array) : void
      {
         this.§_-9E§[this.§_-9E§.length] = new §_-Rx§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public function §_-kt§() : Number
      {
         return this.§_-Vh§;
      }
   }
}
