package §]B§
{
   import flash.utils.getTimer;
   
   public class §!!3§
   {
       
      
      private var mName:String;
      
      private var §@e§:String;
      
      private var §+!#§:String;
      
      private var §12§:String;
      
      private var §0!R§:uint;
      
      private var §%3§:uint;
      
      private var §9!7§:uint;
      
      private var §-!<§:Boolean = false;
      
      public function §!!3§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               this.§9!7§ = getTimer();
            }
            while(!_loc1_);
            
         }
      }
      
      public function get §<! §() : Boolean
      {
         return this.§-!<§;
      }
      
      public function set §<! §(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§-!<§ = param1;
         }
      }
      
      public function get §7'§() : String
      {
         return this.§12§;
      }
      
      public function set §7'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§12§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get §each §() : String
      {
         return this.§@e§;
      }
      
      public function set §each §(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@e§ = param1;
         }
      }
      
      public function get §#7§() : String
      {
         return this.§+!#§;
      }
      
      public function set §#7§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§+!#§ = param1;
         }
      }
      
      public function get §`!E§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§0!R§ = getTimer() - this.§9!7§;
         }
         return this.§0!R§;
      }
      
      public function get §1!§() : uint
      {
         return this.§%3§;
      }
      
      public function set §1!§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%3§ = param1;
         }
      }
      
      public function get §=O§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§7'§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(!(_loc2_ && this))
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr83:
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              §§push(false);
                              if(!(_loc1_ || _loc1_))
                              {
                                 break loop2;
                              }
                              if(_loc1_)
                              {
                                 return §§pop();
                              }
                              continue loop2;
                           }
                        }
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
                  addr108:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr83);
      }
   }
}
