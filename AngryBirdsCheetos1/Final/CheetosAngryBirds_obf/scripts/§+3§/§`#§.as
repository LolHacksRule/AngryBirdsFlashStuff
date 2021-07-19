package §+3§
{
   public class §`#§
   {
       
      
      public var mName:String;
      
      public var §]>§:String;
      
      public var §44§:Number;
      
      public var §;7§:Array;
      
      public var §>V§:Number;
      
      public var §4!?§:Number;
      
      public var §5N§:String;
      
      public var §+h§:String;
      
      public var § ! §:Number;
      
      public var §&u§:String;
      
      public function §`#§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(!(_loc19_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§;7§ = new Array();
                  loop2:
                  while(true)
                  {
                     this.§>V§ = param3;
                     while(!_loc19_)
                     {
                        this.§4!?§ = param4;
                        while(true)
                        {
                           this.§5N§ = param5;
                           loop5:
                           while(_loc18_)
                           {
                              this.§]>§ = param6;
                              while(true)
                              {
                                 addr57:
                                 while(true)
                                 {
                                    this.§44§ = param7;
                                    addr61:
                                    while(!_loc19_)
                                    {
                                       if(_loc19_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        if(!(_loc18_ || this))
                        {
                           continue;
                        }
                        if(!_loc18_)
                        {
                           continue loop2;
                        }
                        if(false)
                        {
                           §§goto(addr57);
                        }
                        for each(_loc11_ in param2.Layer)
                        {
                           _loc12_ = [];
                           if(!_loc19_)
                           {
                              var _loc16_:int = 0;
                              if(!(_loc19_ && param2))
                              {
                                 for each(_loc13_ in _loc11_.ParticleEmitter)
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
                                 }
                              }
                              if(!_loc18_)
                              {
                                 continue;
                              }
                           }
                           this.§81§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
                        }
                        if(_loc18_ || param2)
                        {
                           this.§;7§.reverse();
                           while(true)
                           {
                              this.§ ! § = param9;
                              while(!(_loc19_ && param2))
                              {
                                 this.§&u§ = param10;
                                 if(!_loc18_)
                                 {
                                    continue;
                                 }
                                 return;
                                 addr314:
                              }
                           }
                        }
                        §§goto(addr314);
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§+h§ = param8;
            if(!(_loc19_ && param2))
            {
               if(_loc18_)
               {
                  §§goto(addr46);
               }
               §§goto(addr70);
            }
            §§goto(addr61);
         }
         §§goto(addr104);
      }
      
      public function §81§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(!(_loc18_ && param1))
         {
            this.§;7§[this.§;7§.length] = new §7>§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function §"v§() : Number
      {
         return this.§ ! §;
      }
   }
}
