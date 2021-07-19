package §+!c§
{
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   
   public class §7V§ extends §]A§
   {
       
      
      private var §4!p§:MovieClip;
      
      protected var §8#-§:int;
      
      public function §7V§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
            while(true)
            {
               this.§4!p§ = new §5_§.§`"G§("LevelIconBlackFacebook")();
               addr68:
               while(!_loc2_)
               {
               }
            }
         }
         while(true)
         {
            this.§4!p§.mcLevelIcon.addChild(mAsset);
            while(_loc3_)
            {
               addChild(this.§4!p§);
               if(_loc3_)
               {
                  return;
               }
            }
            §§goto(addr68);
         }
      }
      
      public function get §9!<§() : int
      {
         return this.§8#-§;
      }
      
      public function set §9!<§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = null;
         if(!(_loc3_ && _loc2_))
         {
            this.§8#-§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§8#-§);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr111:
                  while(true)
                  {
                     §§push(§§pop() > §§pop());
                     if(_loc4_ || param1)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr104:
                                 _loc2_ = "noCrown";
                              }
                              if(!(_loc3_ && param1))
                              {
                                 if(!(_loc4_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 _loc2_ = ["Gold","Silver","Bronze"][this.§8#-§ - 1];
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           this.§4!p§.LevelSelection_Crown.gotoAndStop(_loc2_);
                           if(!(_loc4_ || _loc3_))
                           {
                              §§goto(addr104);
                           }
                           return;
                           addr78:
                           addr45:
                        }
                     }
                     addr131:
                     while(true)
                     {
                        §§pop();
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
   }
}
