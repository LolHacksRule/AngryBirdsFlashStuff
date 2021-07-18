package §;g§
{
   import §'!W§.*;
   
   public class §0!o§
   {
      
      public static const §>"$§:Function;
      
      public static const §'"6§:Function;
      
      public static const §="#§:Function;
      
      public static const §7!O§:Function;
      
      public static const §'!d§:Function;
      
      public static const §2+§:Function;
      
      public static const §78§:Function;
      
      public static const § !E§:Function;
      
      public static const §1[§:Function;
      
      private static var §&8§:§0!o§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §>"$§ = §--§.easeIn;
            while(true)
            {
               §'"6§ = §5!q§.easeIn;
               loop1:
               while(_loc1_)
               {
                  §="#§ = §5!q§.easeOut;
                  loop2:
                  while(true)
                  {
                     §7!O§ = §=!'§.easeOut;
                     loop3:
                     do
                     {
                        §'!d§ = §=!'§.easeIn;
                        while(!_loc2_)
                        {
                           §2+§ = §0Q§.easeOut;
                           do
                           {
                              §78§ = §0Q§.easeIn;
                              continue loop2;
                           }
                           while(_loc2_ && _loc2_);
                           
                           if(_loc1_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     while(_loc2_);
                     
                  }
               }
            }
         }
      }
      
      protected var §6!Y§:Vector.<§<!9§>;
      
      protected var §7!J§:Boolean;
      
      protected var §#M§:Boolean = true;
      
      public function §0!o§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§6!Y§ = new Vector.<§<!9§>();
         }
         do
         {
            super();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public static function get §,2§() : §0!o§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§&8§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §&8§ = new §0!o§();
                     addr54:
                     §§push(§&8§);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public function set §6!i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§#M§ = param1;
         }
      }
      
      public function §<!q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<!9§ = null;
         var _loc1_:* = int(this.§6!Y§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§6!Y§[_loc1_];
            if(_loc3_ || _loc2_)
            {
               if(_loc2_.§7y§)
               {
                  while(true)
                  {
                     this.§6!Y§.splice(_loc1_,1);
                     addr92:
                     loop2:
                     while(true)
                     {
                        addr68:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr71:
                           while(!_loc4_)
                           {
                              while(true)
                              {
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr77:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr68);
                     }
                     else
                     {
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr71);
               }
               continue;
            }
            §§goto(addr73);
         }
      }
      
      public function §4!t§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §<!9§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            param5 = param5 || §--§.easeIn;
            var _loc6_:§1!F§;
            (_loc6_ = new §1!F§(param1,param2,param3,param4,param5)).§6!i§ = this.§#M§;
            if(!(_loc7_ && param1))
            {
               this.§6!Y§.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr29);
      }
      
      public function §+!p§(... rest) : §<!9§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§<!9§ = null;
         var _loc3_:§"^§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_ || _loc2_)
            {
               _loc4_ = this.§6!Y§.indexOf(_loc2_);
               if(_loc8_ && this)
               {
                  continue;
               }
            }
            this.§6!Y§.splice(_loc4_,1);
         }
         _loc3_ = new §"^§(rest,true);
         if(_loc7_)
         {
            _loc3_.§6!i§ = this.§#M§;
            do
            {
               this.§6!Y§.push(_loc3_);
            }
            while(_loc8_ && rest);
            
         }
         return _loc3_;
      }
      
      public function §=!<§(... rest) : §<!9§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§<!9§ = null;
         var _loc3_:§"^§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc7_)
            {
               _loc4_ = this.§6!Y§.indexOf(_loc2_);
               if(_loc8_ || _loc3_)
               {
                  this.§6!Y§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §"^§(rest,false);
         if(_loc8_)
         {
            _loc3_.§6!i§ = this.§#M§;
         }
         do
         {
            this.§6!Y§.push(_loc3_);
         }
         while(!_loc8_);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7!J§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§7!J§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(!this.§7!J§)
            {
               if(this.§6!Y§.length == 0)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§goto(addr44);
                  }
               }
               var _loc2_:Vector.<§<!9§> = this.§6!Y§.concat();
               var _loc3_:§<!9§ = null;
               var _loc4_:int = 0;
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc6_ && this)
                  {
                     break;
                  }
                  if(§§pop() >= _loc2_.length)
                  {
                     §§push(int(this.§6!Y§.length - 1));
                     break;
                  }
                  _loc3_ = _loc2_[_loc4_];
                  if(_loc7_)
                  {
                     _loc3_.update(param1);
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  _loc4_++;
               }
               var _loc5_:* = §§pop();
               if(!(_loc6_ && this))
               {
                  while(_loc5_ >= 0)
                  {
                     _loc3_ = this.§6!Y§[_loc5_];
                     if(!(_loc6_ && this))
                     {
                        if(_loc3_.isCompleted)
                        {
                           if(_loc7_ || this)
                           {
                              this.§6!Y§.splice(_loc5_,1);
                              addr171:
                              loop5:
                              while(true)
                              {
                                 addr135:
                                 while(true)
                                 {
                                    _loc3_.dispose();
                                    addr138:
                                    addr145:
                                    while(_loc6_ && param1)
                                    {
                                       continue loop5;
                                    }
                                    continue loop5;
                                 }
                              }
                              addr171:
                           }
                           §§goto(addr171);
                        }
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc7_ || this)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc5_ = §§pop();
                           if(_loc7_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr138);
                           §§goto(addr145);
                        }
                        continue;
                     }
                     §§goto(addr171);
                  }
               }
               return;
            }
            if(_loc7_ || this)
            {
               return;
            }
         }
         addr44:
      }
   }
}
