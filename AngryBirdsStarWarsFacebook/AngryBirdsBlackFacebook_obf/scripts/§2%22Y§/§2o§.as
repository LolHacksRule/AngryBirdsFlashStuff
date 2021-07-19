package §2"Y§
{
   public class §2o§ extends §8!D§
   {
       
      
      protected var §4!g§:String;
      
      protected var §%"o§:String;
      
      protected var §;i§:String;
      
      protected var §5L§:String;
      
      protected var §,!>§:String;
      
      public function §2o§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false, param7:§%"3§ = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
            while(true)
            {
               this.§4!g§ = param1.spriteFreeze;
               addr32:
               if(!(_loc8_ || param3))
               {
                  continue;
               }
               return;
               addr49:
            }
         }
         loop1:
         while(true)
         {
            this.§%"o§ = param1.damageSound;
            addr68:
            while(true)
            {
               this.§;i§ = param1.collisionSound;
               continue loop1;
            }
         }
         §§goto(addr49);
      }
      
      override public function get damageSound() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§%"o§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§%"o§);
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         addr59:
         return §4#V§;
      }
      
      override public function get collisionSound() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;i§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr48);
                  }
               }
               return §2"?§;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§;i§;
      }
      
      public function get frozenKilledSound() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§,!>§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr52);
                  }
               }
               return §31§;
            }
            §§goto(addr52);
         }
         addr52:
         return this.§,!>§;
      }
      
      public function get §5!R§() : String
      {
         return this.§5L§;
      }
   }
}
