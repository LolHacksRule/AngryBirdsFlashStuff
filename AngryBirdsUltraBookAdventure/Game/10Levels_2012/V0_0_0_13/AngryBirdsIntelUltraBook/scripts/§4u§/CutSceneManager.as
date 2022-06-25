package §4u§
{
   import §,!_§.TextureManager;
   import §6b§.Log;
   import flash.utils.Dictionary;
   
   public class CutSceneManager
   {
      
      private static var §,!U§:Array;
      
      private static var §!!#§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,!U§ = [];
         }
         do
         {
            §!!#§ = new Dictionary();
         }
         while(_loc2_);
         
      }
      
      public function CutSceneManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §8!7§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:CutScene = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(_loc7_ || CutSceneManager)
            {
               if(§!!#§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new CutScene(param1[_loc2_],_loc2_);
            if(_loc7_ || _loc3_)
            {
               §§push(Log);
               §§push("Initializing cutScene: ");
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               while(true)
               {
                  addr114:
                  addr95:
                  while(true)
                  {
                     §!!#§[_loc2_] = _loc3_;
                  }
                  if(!(_loc7_ || _loc3_))
                  {
                     continue;
                  }
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr114);
               }
            }
            while(§,!U§.indexOf(_loc2_) >= 0)
            {
               if(_loc7_ || CutSceneManager)
               {
                  _loc3_.§^!"§ = CutScene.§5!_§;
               }
               if(!_loc7_)
               {
                  continue;
               }
               §§goto(addr95);
            }
         }
      }
      
      public static function § _§(param1:String, param2:TextureManager) : CutScene
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:CutScene = §!!#§[param1];
         if(_loc4_ || param2)
         {
            if(_loc3_)
            {
               addr42:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr42);
      }
      
      public static function §9!Z§(param1:String) : CutScene
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:CutScene = §!!#§[param1];
         if(_loc3_ || _loc2_)
         {
            §§push(Boolean(_loc2_));
            if(_loc3_)
            {
               §§push(§§pop());
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr85:
                     while(true)
                     {
                        §§push(Boolean(§,!U§.indexOf(param1)));
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr84:
               }
               while(§§pop())
               {
                  if(_loc3_)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr85);
                        continue;
                     }
                     _loc2_.§^!"§ = CutScene.§5!_§;
                  }
                  break;
               }
               return _loc2_;
            }
            §§goto(addr84);
         }
         §§goto(addr69);
      }
      
      public static function §9!a§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§,!U§);
            if(_loc2_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr45);
               }
               §§pop().push(§§pop());
               §§goto(addr45);
            }
            §§goto(addr42);
         }
         addr45:
         if(_loc2_)
         {
            addr42:
            §§push(§,!U§);
            §§push(param1);
         }
      }
   }
}
