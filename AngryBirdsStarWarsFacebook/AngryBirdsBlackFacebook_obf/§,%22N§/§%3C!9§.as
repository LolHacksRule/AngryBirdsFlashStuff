package §,"N§
{
   import §!"W§.§[!y§;
   import §6!H§.§5!t§;
   import §6!H§.§9!!§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §<!9§ extends EventDispatcher
   {
      
      public static const § v§:String = "GalacticBundle";
      
      public static const §^#T§:String = "GalacticBundleRenew";
      
      public static const §3!&§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § v§ = "GalacticBundle";
         }
         do
         {
            §^#T§ = "GalacticBundleRenew";
            do
            {
               §3!&§ = 3;
            }
            while(_loc2_ && _loc1_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §`K§:Dictionary;
      
      public function §<!9§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            do
            {
               this.§`K§ = new Dictionary();
            }
            while(!_loc1_);
            
         }
      }
      
      public function §&!U§() : Vector.<§9!!§>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Vector.<§9!!§> = new Vector.<§9!!§>(0);
         for(_loc2_ in this.§`K§)
         {
            if(!(_loc5_ && _loc1_))
            {
               _loc1_.push(this.§`K§[_loc2_]);
            }
         }
         return _loc1_;
      }
      
      public function §@#3§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§`K§[param1])
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(§9!!§(this.§`K§[param1]).daysLeft);
                  if(_loc3_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr66:
                  return -1;
               }
               return §§pop();
            }
         }
         §§goto(addr66);
      }
      
      public function §##B§(param1:String) : Vector.<§5!t§>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§`K§[param1])
            {
               if(_loc2_ || _loc3_)
               {
                  return §9!!§(this.§`K§[param1]).content;
               }
            }
         }
         return null;
      }
      
      public function §"!B§(param1:String) : §9!!§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§9!!§ = null;
         var _loc3_:* = null;
         var _loc4_:§5!t§ = null;
         var _loc5_:* = 0;
         for(_loc3_ in this.§`K§)
         {
            _loc2_ = §9!!§(this.§`K§[_loc3_]);
            if(!(_loc8_ && param1))
            {
               §§push(0);
               if(_loc9_)
               {
                  _loc5_ = §§pop();
                  if(_loc8_ && this)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                  }
                  addr103:
               }
               while(§§pop() < _loc2_.content.length)
               {
                  if((_loc4_ = _loc2_.content[_loc5_]).§1@§.toLowerCase() == param1.toLowerCase())
                  {
                     if(_loc9_)
                     {
                        return _loc2_;
                     }
                  }
                  else
                  {
                     _loc5_++;
                  }
                  §§goto(addr103);
               }
            }
         }
         return null;
      }
      
      public function §5!C§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§`K§[param1] == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §7"R§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§9!!§ = null;
         var _loc3_:Object = null;
         for each(_loc3_ in param1.subscriptions)
         {
            if(!_loc6_)
            {
               if(!_loc3_.i)
               {
                  continue;
               }
            }
            _loc2_ = new §9!!§(_loc3_.i,_loc3_.d);
            if(!(_loc6_ && _loc2_))
            {
               this.§1D§(_loc2_);
            }
         }
      }
      
      public function update(param1:Vector.<§9!!§>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.length)
            {
               if(_loc3_ || _loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§1D§(param1[_loc2_]);
               while(true)
               {
                  _loc2_++;
               }
               addr66:
            }
            while(_loc4_)
            {
               §§goto(addr66);
            }
         }
      }
      
      public function §1D§(param1:§9!!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§`K§[param1.id] = param1;
            do
            {
               dispatchEvent(new §[!y§(§[!y§.§1c§,param1.id,param1.daysLeft));
            }
            while(_loc2_);
            
         }
      }
      
      public function §%"j§(param1:String, param2:int = 0) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§`K§[param1])
            {
               §9!!§(this.§`K§[param1]).daysLeft = param2;
               do
               {
                  dispatchEvent(new §[!y§(§[!y§.§1c§,param1,param2));
               }
               while(!(_loc4_ || param2));
               
               §§push(true);
               addr66:
            }
            else
            {
               §§push(false);
               if(!(_loc3_ && _loc3_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr66);
      }
      
      public function §,#a§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§9!!§ = this.§"!B§(param1);
         var _loc3_:* = -1;
         if(!_loc4_)
         {
            if(_loc2_)
            {
               while(true)
               {
                  §§push(_loc2_.daysLeft);
                  addr90:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr91:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr92:
                        while(true)
                        {
                        }
                     }
                  }
                  addr68:
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  addr27:
                  §§push(false);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
                  §§goto(addr67);
               }
            }
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc4_ && param1))
               {
                  if(!_loc4_)
                  {
                     if(§§pop() >= 0)
                     {
                        if(_loc5_)
                        {
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           addr67:
                           return §§pop();
                           §§push(true);
                        }
                        else
                        {
                           §§goto(addr68);
                        }
                     }
                     break;
                  }
                  §§goto(addr90);
               }
               §§goto(addr91);
            }
            §§goto(addr27);
         }
         §§goto(addr92);
      }
   }
}
