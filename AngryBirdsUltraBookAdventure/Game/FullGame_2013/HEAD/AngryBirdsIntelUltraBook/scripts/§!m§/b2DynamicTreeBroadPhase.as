package §!m§
{
   import §>!8§.*;
   
   public class b2DynamicTreeBroadPhase implements §"%§
   {
       
      
      private var §9!L§:b2DynamicTree;
      
      private var § 6§:int;
      
      private var §'!2§:Vector.<b2DynamicTreeNode>;
      
      private var §5E§:Vector.<b2DynamicTreePair>;
      
      private var §4!J§:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§9!L§ = new b2DynamicTree();
            while(true)
            {
               this.§'!2§ = new Vector.<b2DynamicTreeNode>();
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§5E§ = new Vector.<b2DynamicTreePair>();
                     do
                     {
                        super();
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §>!I§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DynamicTreeNode = this.§9!L§.§>!I§(param1,param2);
         if(!(_loc7_ && this))
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§ 6§);
            if(_loc6_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc6_ || this)
            {
               _loc4_.§ 6§ = _loc5_;
            }
            if(_loc6_ || param1)
            {
               addr82:
               this.§"]§(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr82);
      }
      
      public function §,!c§(param1:*) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            this.§7!Y§(param1);
            if(_loc4_)
            {
               §§goto(addr39);
            }
            §§goto(addr76);
         }
         addr39:
         var _loc2_:*;
         §§push((_loc2_ = this).§ 6§);
         if(!_loc5_)
         {
            §§push(§§pop() - 1);
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param1)
         {
            _loc2_.§ 6§ = _loc3_;
         }
         if(_loc4_ || _loc2_)
         {
            addr76:
            this.§9!L§.§,!c§(param1);
         }
      }
      
      public function §]Z§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§9!L§.§]Z§(param1,param2,param3));
         if(_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            if(_loc4_)
            {
               if(!(_loc5_ && param3))
               {
                  this.§"]§(param1);
               }
            }
         }
      }
      
      public function § V§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§9!L§.§9!X§(param1);
         var _loc4_:b2AABB = this.§9!L§.§9!X§(param2);
         return _loc3_.§ V§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§9!L§.GetUserData(param1);
      }
      
      public function §9!X§(param1:*) : b2AABB
      {
         return this.§9!L§.§9!X§(param1);
      }
      
      public function §,A§() : int
      {
         return this.§ 6§;
      }
      
      public function §"!P§(param1:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[3] = 0;
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§push(null);
                           addr136:
                           while(_loc6_ || _loc3_)
                           {
                              §§pop().§§slot[5] = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(_loc6_)
                                 {
                                    §§push(null);
                                    while(true)
                                    {
                                       §§pop().§§slot[6] = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          while(_loc6_)
                                          {
                                             §§push(undefined);
                                             loop12:
                                             while(true)
                                             {
                                                §§pop().§§slot[7] = §§pop();
                                                addr122:
                                                while(_loc6_)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop12;
                                                }
                                                continue loop7;
                                             }
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§pop().§§slot[1] = param1;
                                                while(_loc6_)
                                                {
                                                   this.§4!J§ = 0;
                                                   if(!_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   addr28:
                                                   if(_loc5_ && _loc2_)
                                                   {
                                                      while(_loc6_)
                                                      {
                                                         §§goto(addr28);
                                                      }
                                                      continue loop10;
                                                      addr97:
                                                   }
                                                   §§goto(addr35);
                                                   §§goto(addr51);
                                                }
                                                continue loop2;
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop1;
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           §§push(null);
                           if(_loc6_)
                           {
                              if(!(_loc5_ && this))
                              {
                                 §§pop().§§slot[9] = §§pop();
                                 §§goto(addr97);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr130);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §99§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§9!L§.§99§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9!L§.RayCast(param1,param2);
         }
      }
      
      public function §7v§() : void
      {
      }
      
      public function §`!6§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§9!L§.§`!6§(param1);
         }
      }
      
      private function §"]§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'!2§[this.§'!2§.length] = param1;
         }
      }
      
      private function §7!Y§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§'!2§.indexOf(param1);
         if(!(_loc3_ && this))
         {
            this.§'!2§.splice(_loc2_,1);
         }
      }
      
      private function §65§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
