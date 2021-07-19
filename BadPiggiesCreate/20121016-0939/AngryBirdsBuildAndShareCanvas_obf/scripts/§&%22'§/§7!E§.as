package §&"'§
{
   import §'B§.*;
   
   public class §7!E§
   {
      
      public static const §+!E§:Function;
      
      public static const §throw§:Function;
      
      public static const §;!i§:Function;
      
      public static const §5!+§:Function;
      
      public static const §#r§:Function;
      
      public static const §8""§:Function;
      
      public static const §=!S§:Function;
      
      public static const §-"9§:Function;
      
      public static const §0! §:Function;
      
      private static var §1%§:§7!E§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+!E§ = §-"&§.easeIn;
            loop0:
            while(true)
            {
               §throw§ = §5!z§.easeIn;
               addr132:
               while(true)
               {
                  §;!i§ = §5!z§.easeOut;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §8""§ = §>!e§.easeOut;
            §§goto(addr77);
         }
         §§goto(addr47);
      }
      
      protected var static:Vector.<§@5§>;
      
      protected var §93§:Boolean;
      
      protected var §<!y§:Boolean = true;
      
      public function §7!E§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.static = new Vector.<§@5§>();
            do
            {
               super();
            }
            while(_loc1_);
            
         }
      }
      
      public static function get §2=§() : §7!E§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§1%§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr44:
                     §1%§ = new §7!E§();
                  }
               }
               return §1%§;
            }
         }
         §§goto(addr44);
      }
      
      public function set §#!5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!y§ = param1;
         }
      }
      
      public function §`!7§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@5§ = null;
         var _loc1_:* = int(this.static.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.static[_loc1_];
            if(!_loc3_)
            {
               if(_loc2_.§?V§)
               {
                  while(true)
                  {
                     this.static.splice(_loc1_,1);
                     addr98:
                     loop5:
                     while(true)
                     {
                        addr69:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr72:
                           addr79:
                           while(_loc3_ && _loc3_)
                           {
                              continue loop5;
                           }
                           continue loop5;
                        }
                     }
                     addr60:
                     if(_loc3_ && _loc1_)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr69);
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr60);
                  }
                  §§goto(addr72);
                  §§goto(addr79);
               }
               continue;
            }
            §§goto(addr98);
         }
      }
      
      public function §<!C§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §@5§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            param5 = param5 || §-"&§.easeIn;
            var _loc6_:§+"5§;
            (_loc6_ = new §+"5§(param1,param2,param3,param4,param5)).§#!5§ = this.§<!y§;
            if(!(_loc8_ && param2))
            {
               this.static.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr28);
      }
      
      public function §7#§(... rest) : §@5§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§1!X§ = null;
         var _loc3_:§`q§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc7_ && _loc3_))
            {
               _loc4_ = this.static.indexOf(_loc2_);
               if(_loc8_ || this)
               {
                  this.static.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §`q§(rest,true);
         if(!(_loc7_ && _loc2_))
         {
            _loc3_.§#!5§ = this.§<!y§;
            do
            {
               this.static.push(_loc3_);
            }
            while(!_loc8_);
            
         }
         return _loc3_;
      }
      
      public function §2!u§(... rest) : §@5§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§1!X§ = null;
         var _loc3_:§`q§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc7_ || this)
            {
               _loc4_ = this.static.indexOf(_loc2_);
               if(!_loc7_)
               {
                  continue;
               }
            }
            this.static.splice(_loc4_,1);
         }
         _loc3_ = new §`q§(rest,false);
         if(!_loc8_)
         {
            _loc3_.§#!5§ = this.§<!y§;
         }
         do
         {
            this.static.push(_loc3_);
         }
         while(!_loc7_);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§93§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§93§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§@5§ = null;
         if(_loc5_ || this)
         {
            if(this.§93§)
            {
               if(!(_loc6_ && this))
               {
                  §§goto(addr38);
               }
            }
            var _loc2_:* = 0;
            while(_loc2_ < this.static.length)
            {
               _loc3_ = false;
               if(_loc6_)
               {
                  break;
               }
               (_loc4_ = this.static[_loc2_]).update(param1);
               if(_loc5_ || this)
               {
                  if(_loc4_.isCompleted)
                  {
                     addr110:
                     while(true)
                     {
                        this.static.splice(_loc2_,1);
                        addr125:
                        loop3:
                        while(true)
                        {
                           _loc4_.dispose();
                           addr106:
                           loop4:
                           while(true)
                           {
                              addr89:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 addr100:
                                 addr102:
                                 while(_loc6_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     addr110:
                  }
                  while(true)
                  {
                     _loc2_++;
                     if(_loc5_ || this)
                     {
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr89);
                           }
                           else
                           {
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr100);
                     §§goto(addr102);
                  }
                  continue;
               }
               §§goto(addr110);
            }
            return;
         }
         addr38:
      }
   }
}
