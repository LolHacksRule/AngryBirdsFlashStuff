package §'i§
{
   import §7r§.§=q§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §,!1§ extends EventDispatcher
   {
      
      public static const PAN:String = "PAN";
      
      public static const SAVE:String = "SAVE";
      
      public static const CONTINUE:String = "CONTINUE";
      
      public static const MODIFY:String = "MODIFY";
      
      public static const ADD:String = "ADD";
      
      public static const DELETE:String = "DELETE";
      
      public static const CATEGORY:String = "CATEGORY";
      
      public static const GRAVITY:String = "GRAVITY";
      
      public static const CREATE_UNDO:String = "CREATE_UNDO";
      
      private static var §1%§:§,!1§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,!1§))
         {
            PAN = "PAN";
            while(true)
            {
               SAVE = "SAVE";
               loop1:
               while(true)
               {
                  CONTINUE = "CONTINUE";
                  while(true)
                  {
                     MODIFY = "MODIFY";
                     continue loop1;
                     while(!(_loc2_ && §,!1§))
                     {
                        CATEGORY = "CATEGORY";
                        loop6:
                        while(!_loc2_)
                        {
                           GRAVITY = "GRAVITY";
                           do
                           {
                              CREATE_UNDO = "CREATE_UNDO";
                              do
                              {
                                 §1%§ = new §,!1§();
                              }
                              while(!_loc1_);
                              
                           }
                           while(_loc2_ && _loc1_);
                           
                           if(!(_loc2_ && §,!1§))
                           {
                              addr49:
                              if(!(_loc1_ || §,!1§))
                              {
                                 while(true)
                                 {
                                    DELETE = "DELETE";
                                    break loop6;
                                    §§goto(addr49);
                                 }
                                 addr102:
                              }
                              if(_loc1_)
                              {
                                 return;
                                 addr58:
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               if(!(_loc1_ || §,!1§))
               {
                  continue;
               }
               ADD = "ADD";
               §§goto(addr102);
            }
         }
         §§goto(addr58);
      }
      
      private var §-4§:Dictionary;
      
      public function §,!1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-4§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public static function get §2=§() : §,!1§
      {
         return §1%§;
      }
      
      public function §8!5§(param1:Function, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(this.§-4§[param2] == null)
            {
               if(_loc3_ || param2)
               {
                  this.§-4§[param2] = new Vector.<Function>();
               }
               while(true)
               {
               }
               addr89:
            }
            loop1:
            for(; this.§-4§[param2].indexOf(param1) == -1; §§goto(addr89))
            {
               if(_loc3_)
               {
                  while(true)
                  {
                     this.§-4§[param2].push(param1);
                  }
                  addr49:
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     break loop1;
                  }
                  continue loop1;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §>![§(param1:Function, param2:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         var _loc3_:Vector.<String> = this.§-4§[param2];
         if(!(_loc5_ && _loc3_))
         {
            if(_loc3_)
            {
               if(_loc6_)
               {
                  §§push(int(this.§-4§[param2].indexOf(param1)));
                  if(!_loc5_)
                  {
                     §§push(§§pop());
                     if(!_loc5_)
                     {
                        _loc4_ = §§pop();
                        addr59:
                        §§push(-1);
                     }
                     if(§§pop() > §§pop())
                     {
                        if(!_loc5_)
                        {
                           addr73:
                           this.§-4§[param2].splice(_loc4_,1);
                        }
                        §§goto(addr80);
                     }
                     addr80:
                     return;
                  }
                  §§goto(addr59);
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §]!2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-4§ = new Dictionary();
         }
      }
      
      private function §<!F§(param1:String, ... rest) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         for each(_loc3_ in this.§-4§[param1])
         {
            if(!(_loc7_ && _loc3_))
            {
               if(!_loc3_.apply(null,rest))
               {
                  if(_loc6_)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      public function §1!?§() : Boolean
      {
         return true;
      }
      
      public function §-!Q§() : Boolean
      {
         return this.§<!F§(SAVE);
      }
      
      public function § b§() : Boolean
      {
         return this.§<!F§(CONTINUE);
      }
      
      public function §>L§(param1:§=q§ = null) : Boolean
      {
         return this.§<!F§(MODIFY,param1);
      }
      
      public function §[!e§(param1:String = null) : Boolean
      {
         return this.§<!F§(ADD,param1);
      }
      
      public function §,h§(param1:§=q§ = null) : Boolean
      {
         return this.§<!F§(DELETE,param1);
      }
      
      public function §"H§(param1:String) : Boolean
      {
         return this.§<!F§(CATEGORY,param1);
      }
      
      public function §"";§() : Boolean
      {
         return this.§<!F§(GRAVITY);
      }
      
      public function §8§() : Boolean
      {
         return this.§<!F§(CREATE_UNDO);
      }
   }
}
