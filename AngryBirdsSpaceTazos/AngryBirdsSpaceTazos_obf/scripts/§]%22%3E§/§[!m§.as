package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.set;
   import §'!&§.b2World;
   import §7!8§.Sprite;
   
   public class §[!m§ extends §3=§
   {
       
      
      protected var §>k§:§+o§;
      
      public function §[!m§(param1:Sprite, param2:b2World, param3:§8X§, param4:set, param5:Number, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function set §9J§(param1:§+o§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>k§ = param1;
         }
      }
      
      public function get §9J§() : §+o§
      {
         return this.§>k§;
      }
      
      override public function addSensedObject(param1:§<!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.addSensedObject(param1);
         }
         do
         {
            §§push(this.§>k§);
            if(!(_loc2_ && _loc3_))
            {
               if(!§§pop())
               {
                  §§goto(addr25);
               }
               if(!_loc3_)
               {
                  continue;
               }
               §§push(this.§>k§);
            }
            §§pop().§34§(param1,this);
         }
         while(_loc2_ && _loc2_);
         
         addr25:
      }
      
      override public function removeSensedObject(param1:§<!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.removeSensedObject(param1);
            while(true)
            {
               §§push(this.§>k§);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        if(!_loc2_)
                        {
                           §§push(this.§>k§);
                           break;
                        }
                        continue;
                     }
                     addr74:
                  }
                  return;
               }
               break;
            }
            §§pop().§0"<§(param1,this);
         }
         §§goto(addr74);
      }
   }
}
