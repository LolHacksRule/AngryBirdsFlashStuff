package §6!A§
{
   import §<!1§.§9!=§;
   
   public class §4!1§
   {
      
      private static var §#!V§:§4!1§;
       
      
      private var §8"<§:§9!=§;
      
      private var §%!;§:int = 50;
      
      private var §;"?§:Vector.<String>;
      
      public function §4!1§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§8"<§ = new §9!=§(1);
               loop1:
               while(_loc1_ || this)
               {
                  while(true)
                  {
                     this.§^?§();
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public static function get §[E§() : §4!1§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§#!V§);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr51:
                     §#!V§ = new §4!1§();
                  }
               }
               return §#!V§;
            }
         }
         §§goto(addr51);
      }
      
      public function §^?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;"?§ = new Vector.<String>();
         }
      }
      
      public function §break§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§;"?§ = null;
         }
      }
      
      public function §'!0§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§;"?§.push(param1);
         }
      }
      
      public function get §2e§() : int
      {
         return this.§%!;§;
      }
      
      public function set §2e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!;§ = param1;
         }
      }
      
      public function §<"-§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = null;
         if(_loc4_)
         {
            if(this.§;"?§ == null)
            {
               if(_loc4_)
               {
                  §§goto(addr27);
               }
            }
            var _loc2_:int = 0;
            var _loc3_:* = this.§;"?§;
            while(§§hasnext(_loc3_,_loc2_))
            {
               §§push(§§nextvalue(_loc2_,_loc3_));
               if(!(_loc5_ && this))
               {
                  _loc1_ = §§pop();
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(_loc1_);
               }
               if(§§pop().indexOf("BIRD_") == 0)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     return true;
                  }
               }
            }
            return false;
         }
         addr27:
         return true;
      }
   }
}
