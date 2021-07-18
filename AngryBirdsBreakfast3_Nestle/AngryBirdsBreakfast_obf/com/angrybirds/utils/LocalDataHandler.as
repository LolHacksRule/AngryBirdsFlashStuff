package com.angrybirds.utils
{
   import flash.net.SharedObject;
   
   public class LocalDataHandler
   {
       
      
      private var §1q§:String = "";
      
      private var §7!?§:Object;
      
      public function LocalDataHandler(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
            while(true)
            {
               this.§1q§ = param1;
               while(!(_loc3_ && param1))
               {
                  this.§?!-§();
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
         }
         §§goto(addr48);
      }
      
      public function load() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = null;
         for(_loc1_ in this.§7!?§.tutorials)
         {
            if(!_loc5_)
            {
               (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.setTutorialSeen(_loc1_);
            }
         }
      }
      
      private function §?!-§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§1q§);
            if(!(_loc4_ && _loc3_))
            {
               this.§7!?§ = mySO.data;
               if(_loc3_)
               {
                  §§goto(addr80);
               }
            }
         }
         catch(e:Error)
         {
            if(_loc3_ || this)
            {
               §7!?§ = new Object();
            }
            addr80:
            if(!this.§7!?§.tutorials)
            {
               if(_loc3_ || this)
               {
                  addr101:
                  this.§7!?§.tutorials = [];
               }
            }
            return;
         }
         §§goto(addr101);
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§7!?§.tutorials[param1] = param2;
            do
            {
               this.§[0§();
            }
            while(!(_loc3_ || param2));
            
         }
      }
      
      private function §[0§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(null);
            if(!(_loc5_ && _loc1_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_ || _loc2_)
               {
                  addr42:
                  var i:String = null;
               }
               try
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§pop().§§slot[1] = SharedObject.getLocal(this.§1q§);
                     if(_loc4_ || _loc1_)
                     {
                        var _loc2_:int = 0;
                        if(!(_loc5_ && _loc3_))
                        {
                           var _loc3_:* = this.§7!?§;
                           if(_loc4_ || this)
                           {
                           }
                           while(§§hasnext(_loc3_,_loc2_))
                           {
                              §§push(§§newactivation());
                              if(_loc4_ || _loc3_)
                              {
                                 §§pop().§§slot[2] = §§nextname(_loc2_,_loc3_);
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 §§push(§§newactivation());
                              }
                              §§pop().§§slot[1].data[i] = this.§7!?§[i];
                           }
                        }
                        if(_loc4_)
                        {
                           addr125:
                           mySO.flush();
                           addr124:
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr125);
               }
               catch(e:Error)
               {
               }
               addr151:
               return;
            }
         }
         §§goto(addr42);
      }
   }
}
