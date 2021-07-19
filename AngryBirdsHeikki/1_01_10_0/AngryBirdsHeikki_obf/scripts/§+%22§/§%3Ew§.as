package §+"§
{
   public class §>w§
   {
       
      
      public var mName:String;
      
      public var §]!O§:String;
      
      public var §-!L§:Number;
      
      public var §2e§:Array;
      
      public var §!!+§:Number;
      
      public var §"`§:Number;
      
      public var §"!Z§:String;
      
      public var §?!-§:String;
      
      public var §[!!§:Number;
      
      public var §@!W§:String;
      
      public function §>w§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(_loc18_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               while(_loc18_ || param1)
               {
                  this.§"!Z§ = param5;
                  loop5:
                  while(_loc18_ || param3)
                  {
                     this.§]!O§ = param6;
                     loop6:
                     for(; _loc18_; while(true)
                     {
                        if(_loc18_ || this)
                        {
                           continue loop5;
                        }
                        continue loop6;
                     },while(true)
                     {
                        this.§2e§ = new Array();
                        §§goto(addr105);
                        addr54:
                        if(_loc19_ && param2)
                        {
                           continue;
                        }
                        this.§?!-§ = param8;
                        if(_loc18_)
                        {
                           §§goto(addr34);
                        }
                        §§goto(addr40);
                     },addr40:)
                     {
                        if(!_loc19_)
                        {
                           do
                           {
                              this.§-!L§ = param7;
                              continue loop6;
                           }
                           while(false);
                           
                           var _loc14_:int = 0;
                           var _loc15_:* = param2.Layer;
                           addr307:
                           for each(_loc11_ in _loc15_)
                           {
                              _loc12_ = [];
                              if(!(_loc19_ && param3))
                              {
                                 var _loc16_:int = 0;
                                 if(_loc18_)
                                 {
                                    var _loc17_:* = _loc11_.ParticleEmitter;
                                    addr244:
                                    for each(_loc13_ in _loc17_)
                                    {
                                       if(_loc18_)
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
                                       §§goto(addr244);
                                    }
                                    addr247:
                                    if(_loc18_ || param3)
                                    {
                                       this.§>!R§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
                                    }
                                    §§goto(addr307);
                                 }
                                 §§goto(addr247);
                              }
                              §§goto(addr307);
                           }
                           if(_loc18_)
                           {
                              this.§2e§.reverse();
                              this.§[!!§ = param9;
                              addr339:
                              if(_loc18_)
                              {
                                 this.§@!W§ = param10;
                                 if(!_loc18_)
                                 {
                                    §§goto(addr339);
                                 }
                                 return;
                                 addr324:
                              }
                              addr345:
                              §§goto(addr345);
                           }
                           §§goto(addr324);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§!!+§ = param3;
                              break loop6;
                           }
                           addr105:
                        }
                     }
                     while(true)
                     {
                        this.§"`§ = param4;
                        break loop5;
                     }
                     if(_loc19_ && this)
                     {
                        continue;
                     }
                     §§goto(addr54);
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function §>!R§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(!(_loc18_ && param1))
         {
            this.§2e§[this.§2e§.length] = new §#!=§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function §?!E§() : Number
      {
         return this.§[!!§;
      }
   }
}
