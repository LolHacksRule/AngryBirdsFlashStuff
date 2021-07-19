package §?m§
{
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   
   public class §[#;§ extends §,"X§
   {
       
      
      private var §]s§:String;
      
      public function §[#;§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function getPrettyLevelString(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == "-1")
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  addr114:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               addr70:
               §§push(§§pop() + " - ");
               if(_loc3_)
               {
                  return §§pop() + §@#B§(§4#;§.singleton.dataModel).§!!C§.§1"C§(param1);
               }
            }
            return "nothing";
         }
         §§goto(addr114);
      }
      
      override public function getNextLevelId() : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§@"b§ = null;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         var _loc4_:Object = null;
         if(!_loc5_)
         {
            if(§@!F§.indexOf("2000-") == -1)
            {
               return super.getNextLevelId();
            }
         }
         _loc1_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
         _loc2_ = _loc1_.§["^§(§@!F§);
         if(!_loc5_)
         {
            §§push(_loc1_.levelObjects);
            if(_loc6_)
            {
               §§push(int(§§pop().indexOf(_loc2_)));
               if(!(_loc5_ && _loc3_))
               {
                  _loc3_ = §§pop();
                  addr75:
                  §§push(_loc3_);
               }
               if(§§pop() + 1 >= _loc1_.levelObjects.length)
               {
                  return null;
               }
               §§push(_loc1_.levelObjects);
            }
            return (_loc4_ = §§pop()[_loc3_ + 1]).levelId;
         }
         §§goto(addr75);
      }
      
      override public function get currentLevelWrittenName() : String
      {
         return this.getPrettyLevelString(§@!F§);
      }
      
      public function §<"s§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§]s§ = param1;
         }
      }
      
      override public function getLevelForId(param1:String) : §8!B§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == "-1")
            {
               if(_loc2_ || this)
               {
                  return §=!z§.§+#^§(this.§]s§);
               }
            }
         }
         return super.getLevelForId(param1);
      }
      
      override public function loadLevel(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 == "-1")
            {
               if(_loc3_ || _loc3_)
               {
                  §@!F§ = "-1";
                  addr64:
                  while(true)
                  {
                  }
                  addr64:
               }
               §§goto(addr64);
            }
            while(true)
            {
               super.loadLevel(param1);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function getEpisodeForLevel(param1:String) : §3![§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3![§ = null;
         if(_loc5_ || param1)
         {
            if(param1 == "-1")
            {
               addr29:
               var _loc3_:int = 0;
               for each(_loc2_ in §<!W§)
               {
                  if(_loc5_ || _loc3_)
                  {
                     if(_loc2_.§9"?§("2000-1"))
                     {
                        if(_loc5_)
                        {
                           return _loc2_;
                        }
                     }
                  }
               }
            }
            return super.getEpisodeForLevel(param1);
         }
         §§goto(addr29);
      }
   }
}
