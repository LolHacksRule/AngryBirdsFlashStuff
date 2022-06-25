package §2@§
{
   public class §+!Y§
   {
       
      
      public var mName:String;
      
      public var §8!_§:String;
      
      public var §do §:Number;
      
      public var §7!"§:Array;
      
      public var §+%§:Number;
      
      public var §#r§:Number;
      
      public var §9E§:String;
      
      public var §9!J§:String;
      
      public var §?!$§:Number;
      
      public var §0!y§:String;
      
      public function §+!Y§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(!_loc18_)
         {
            super();
         }
         while(true)
         {
            this.mName = param1;
            while(_loc19_ || param2)
            {
               this.§7!"§ = new Array();
               loop2:
               for(; _loc19_ || param1; while(!(_loc18_ && this))
               {
                  this.§9E§ = param5;
                  §§goto(addr74);
                  §§goto(addr42);
               })
               {
                  this.§+%§ = param3;
                  while(true)
                  {
                     this.§#r§ = param4;
                     continue loop2;
                     loop8:
                     while(!(_loc18_ && param3))
                     {
                        this.§9!J§ = param8;
                        if(_loc19_)
                        {
                           addr35:
                           if(_loc19_ || this)
                           {
                              addr42:
                              if(!(_loc19_ || param2))
                              {
                                 continue loop2;
                              }
                              if(true)
                              {
                                 var _loc14_:int = 0;
                                 var _loc15_:* = param2.Layer;
                                 addr323:
                                 for each(_loc11_ in _loc15_)
                                 {
                                    _loc12_ = [];
                                    if(_loc19_ || param1)
                                    {
                                       var _loc16_:int = 0;
                                       if(!(_loc18_ && param3))
                                       {
                                          var _loc17_:* = _loc11_.ParticleEmitter;
                                          addr260:
                                          for each(_loc13_ in _loc17_)
                                          {
                                             if(!(_loc18_ && param3))
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
                                             §§goto(addr260);
                                          }
                                          addr263:
                                          if(!(_loc18_ && param3))
                                          {
                                             addr271:
                                             this.§&!L§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
                                          }
                                          §§goto(addr323);
                                       }
                                       §§goto(addr263);
                                    }
                                    §§goto(addr271);
                                 }
                                 if(_loc19_)
                                 {
                                    this.§7!"§.reverse();
                                    this.§?!$§ = param9;
                                    this.§0!y§ = param10;
                                    addr371:
                                    if(_loc19_ || param3)
                                    {
                                       if(!(_loc19_ || param3))
                                       {
                                          §§goto(addr371);
                                       }
                                       return;
                                       addr362:
                                    }
                                    addr367:
                                    §§goto(addr367);
                                 }
                                 §§goto(addr362);
                              }
                           }
                           else
                           {
                              while(_loc19_)
                              {
                                 §§goto(addr35);
                              }
                              while(true)
                              {
                                 this.§8!_§ = param6;
                                 §§goto(addr67);
                              }
                              addr67:
                              addr74:
                           }
                           while(true)
                           {
                              this.§do § = param7;
                              continue loop8;
                              §§goto(addr42);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §&!L§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(_loc18_)
         {
            this.§7!"§[this.§7!"§.length] = new §1!Q§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function § !0§() : Number
      {
         return this.§?!$§;
      }
   }
}
