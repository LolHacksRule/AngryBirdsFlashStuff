package §?$§
{
   import §'N§.Log;
   import §8!?§.TextureManager;
   import flash.utils.Dictionary;
   
   public class CutSceneManager
   {
      
      private static var §'4§:Array;
      
      private static var §#i§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'4§ = [];
         }
         do
         {
            §#i§ = new Dictionary();
         }
         while(!_loc2_);
         
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
      
      public static function §+[§(param1:Object) : void
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
               if(§#i§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new CutScene(param1[_loc2_],_loc2_);
            if(!_loc7_)
            {
               §§push(Log);
               §§push("Initializing cutScene: ");
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
            }
            while(true)
            {
               loop2:
               while(true)
               {
                  §#i§[_loc2_] = _loc3_;
                  while(§'4§.indexOf(_loc2_) >= 0)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        _loc3_.§%p§ = CutScene.§@s§;
                     }
                     if(_loc6_)
                     {
                        if(!_loc6_)
                        {
                           break loop2;
                        }
                        if(true)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function §5h§(param1:String, param2:TextureManager) : CutScene
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:CutScene = §#i§[param1];
         if(_loc5_)
         {
            if(_loc3_)
            {
               addr38:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr38);
      }
      
      public static function §#L§(param1:String) : CutScene
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:CutScene = §#i§[param1];
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
               if(!§§pop())
               {
                  loop2:
                  for(; §§pop(); continue loop0)
                  {
                     if(!_loc3_)
                     {
                        _loc2_.§%p§ = CutScene.§@s§;
                     }
                     if(_loc4_ || CutSceneManager)
                     {
                        break;
                     }
                     addr96:
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§'4§.indexOf(param1)));
                        if(!(_loc3_ && CutSceneManager))
                        {
                           continue loop2;
                        }
                        addr95:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                  }
                  return _loc2_;
                  addr71:
               }
               §§goto(addr95);
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               §§goto(addr71);
            }
         }
         §§goto(addr96);
      }
      
      public static function §2!C§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§'4§);
            if(_loc2_ || param1)
            {
               §§push(param1);
               if(_loc2_ || CutSceneManager)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr55);
               }
               §§pop().push(§§pop());
               §§goto(addr55);
            }
            §§goto(addr52);
         }
         addr55:
         if(!_loc3_)
         {
            addr52:
            §§push(§'4§);
            §§push(param1);
         }
      }
   }
}
