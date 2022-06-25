package §%r§
{
   import §,!7§.TextureManager;
   import §<u§.Log;
   import flash.utils.Dictionary;
   
   public class CutSceneManager
   {
      
      private static var §5!V§:Array;
      
      private static var §;g§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5!V§ = [];
         }
         do
         {
            §;g§ = new Dictionary();
         }
         while(!(_loc2_ || CutSceneManager));
         
      }
      
      public function CutSceneManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §!s§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:CutScene = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(_loc6_)
            {
               if(§;g§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new CutScene(param1[_loc2_],_loc2_);
            if(_loc6_ || _loc3_)
            {
               §§push(Log);
               §§push("Initializing cutScene: ");
               if(!(_loc7_ && CutSceneManager))
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               while(true)
               {
                  addr103:
                  addr79:
                  while(true)
                  {
                     §;g§[_loc2_] = _loc3_;
                  }
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  _loc3_.§]p§ = CutScene.§[V§;
                  addr101:
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr103);
               }
            }
            while(§5!V§.indexOf(_loc2_) >= 0)
            {
               if(_loc6_)
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  §§goto(addr79);
               }
               §§goto(addr101);
            }
         }
      }
      
      public static function §?!&§(param1:String, param2:TextureManager) : CutScene
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:CutScene = §;g§[param1];
         if(_loc4_ || param1)
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
      
      public static function §+B§(param1:String) : CutScene
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:CutScene = §;g§[param1];
         if(!_loc3_)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr86:
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§5!V§.indexOf(param1)));
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              while(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    _loc2_.§]p§ = CutScene.§[V§;
                                 }
                                 break;
                              }
                              return _loc2_;
                              addr61:
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr61);
            }
         }
         §§goto(addr86);
      }
      
      public static function §]O§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§5!V§);
            if(_loc2_ || param1)
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     if(!(_loc3_ && CutSceneManager))
                     {
                        addr53:
                        §5!V§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
   }
}
