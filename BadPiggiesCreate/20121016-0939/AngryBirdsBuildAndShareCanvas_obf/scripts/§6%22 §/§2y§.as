package §6" §
{
   import §'@§.§^J§;
   
   public class §2y§
   {
      
      private static var §8!L§:§2y§;
       
      
      private var § P§:§^J§;
      
      private var §+x§:int = 50;
      
      private var §;!X§:Vector.<String>;
      
      public function §2y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               this.§ P§ = new §^J§(1);
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§ "5§();
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      public static function get §2=§() : §2y§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§8!L§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     §8!L§ = new §2y§();
                     addr55:
                     §§push(§8!L§);
                  }
               }
               §§goto(addr55);
            }
            return §§pop();
         }
         §§goto(addr55);
      }
      
      public function § "5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§;!X§ = new Vector.<String>();
         }
      }
      
      public function §[!y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;!X§ = null;
         }
      }
      
      public function §@E§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!X§.push(param1);
         }
      }
      
      public function get §@"§() : int
      {
         return this.§+x§;
      }
      
      public function set §@"§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§+x§ = param1;
         }
      }
      
      public function §-!=§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = null;
         if(_loc5_ || _loc2_)
         {
            if(this.§;!X§ == null)
            {
               if(_loc5_ || this)
               {
                  return true;
               }
            }
         }
         var _loc2_:int = 0;
         var _loc3_:* = this.§;!X§;
         while(§§hasnext(_loc3_,_loc2_))
         {
            §§push(§§nextvalue(_loc2_,_loc3_));
            if(!(_loc4_ && _loc1_))
            {
               _loc1_ = §§pop();
               if(!_loc5_)
               {
                  continue;
               }
               §§push(_loc1_);
            }
            if(§§pop().indexOf("BIRD_") == 0)
            {
               if(_loc5_ || _loc2_)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
