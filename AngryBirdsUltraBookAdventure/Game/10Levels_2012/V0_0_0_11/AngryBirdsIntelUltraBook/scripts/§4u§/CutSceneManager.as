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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!U§ = [];
         }
         do
         {
            §!!#§ = new Dictionary();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function CutSceneManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §8!7§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:CutScene = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!(_loc7_ && param1))
            {
               if(§!!#§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new CutScene(param1[_loc2_],_loc2_);
            if(_loc6_)
            {
               §§push(Log);
               §§push("Initializing cutScene: ");
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               loop1:
               while(true)
               {
                  addr103:
                  loop2:
                  while(true)
                  {
                     §!!#§[_loc2_] = _loc3_;
                     while(true)
                     {
                        if(§,!U§.indexOf(_loc2_) < 0)
                        {
                           break loop2;
                        }
                        if(_loc7_ && _loc2_)
                        {
                           break;
                        }
                        if(!_loc7_)
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
            }
            while(true)
            {
               if(true)
               {
                  continue loop0;
               }
               §§goto(addr103);
            }
         }
      }
      
      public static function § _§(param1:String, param2:TextureManager) : CutScene
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:CutScene = §!!#§[param1];
         if(_loc4_)
         {
            if(_loc3_)
            {
               addr27:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr27);
      }
      
      public static function §9!Z§(param1:String) : CutScene
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:CutScene = §!!#§[param1];
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(_loc2_));
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr96:
                     while(true)
                     {
                        §§push(Boolean(§,!U§.indexOf(param1)));
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr95:
               }
               while(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     _loc2_.§^!"§ = CutScene.§5!_§;
                  }
                  if(!_loc3_)
                  {
                     addr80:
                     break;
                  }
                  §§goto(addr96);
               }
               return _loc2_;
            }
            §§goto(addr95);
         }
         §§goto(addr80);
      }
      
      public static function §9!a§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§,!U§);
            if(!(_loc2_ && CutSceneManager))
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     if(!_loc2_)
                     {
                        addr49:
                        §,!U§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr49);
      }
   }
}
