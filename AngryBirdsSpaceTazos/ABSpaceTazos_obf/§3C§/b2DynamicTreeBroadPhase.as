package §3c§
{
   import §9t§.*;
   
   public class b2DynamicTreeBroadPhase implements §>!e§
   {
       
      
      private var §+!6§:b2DynamicTree;
      
      private var §=!x§:int;
      
      private var §;h§:Vector.<b2DynamicTreeNode>;
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair>;
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§+!6§ = new b2DynamicTree();
            loop0:
            while(true)
            {
               this.§;h§ = new Vector.<b2DynamicTreeNode>();
               while(true)
               {
                  this.m_pairBuffer = new Vector.<b2DynamicTreePair>();
                  while(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        super();
                        if(_loc2_ || _loc1_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §'!C§(param1:b2AABB, param2:*) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DynamicTreeNode = this.§+!6§.§'!C§(param1,param2);
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§=!x§);
            if(!_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               _loc4_.§=!x§ = _loc5_;
            }
            if(_loc7_ || param1)
            {
               this.§^!<§(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §&1§(param1:*) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§=l§(param1);
            if(!_loc4_)
            {
               addr39:
               var _loc2_:*;
               §§push((_loc2_ = this).§=!x§);
               if(!_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(!_loc4_)
               {
                  _loc2_.§=!x§ = _loc3_;
               }
               if(!_loc4_)
               {
                  this.§+!6§.§&1§(param1);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §1i§(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§+!6§.§1i§(param1,param2,param3));
         if(!(_loc6_ && param3))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc5_)
            {
               this.§^!<§(param1);
            }
         }
      }
      
      public function §5"0§(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this.§+!6§.§%!g§(param1);
         var _loc4_:b2AABB = this.§+!6§.§%!g§(param2);
         return _loc3_.§5"0§(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this.§+!6§.GetUserData(param1);
      }
      
      public function §%!g§(param1:*) : b2AABB
      {
         return this.§+!6§.§%!g§(param1);
      }
      
      public function §0!y§() : int
      {
         return this.§=!x§;
      }
      
      public function § J§(param1:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[3] = 0;
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§push(null);
                           addr137:
                           while(true)
                           {
                              §§pop().§§slot[5] = §§pop();
                              addr139:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 addr123:
                                 while(true)
                                 {
                                    §§push(null);
                                    addr124:
                                    while(true)
                                    {
                                       §§pop().§§slot[6] = §§pop();
                                       addr126:
                                       while(_loc5_ || param1)
                                       {
                                          §§push(§§newactivation());
                                          continue loop5;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §6!?§(param1:Function, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§+!6§.§6!?§(param1,param2);
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§+!6§.RayCast(param1,param2);
         }
      }
      
      public function §,E§() : void
      {
      }
      
      public function §+!P§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§+!6§.§+!P§(param1);
         }
      }
      
      private function §^!<§(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;h§[this.§;h§.length] = param1;
         }
      }
      
      private function §=l§(param1:b2DynamicTreeNode) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§;h§.indexOf(param1);
         if(_loc4_ || _loc2_)
         {
            this.§;h§.splice(_loc2_,1);
         }
      }
      
      private function §["=§(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}
