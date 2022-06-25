package §"!&§
{
   import §,6§.§!o§;
   import §1!T§.§6!H§;
   import §9E§.Sprite;
   
   public class §#C§ extends §!!%§
   {
       
      
      private var §>A§:String;
      
      private var §+!Q§:Boolean;
      
      private var §&K§:Number;
      
      private var §]!`§:int;
      
      public function §#C§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param2);
            while(true)
            {
               this.§>A§ = param3;
               while(_loc7_)
               {
                  this.§+!Q§ = param4;
                  loop2:
                  while(_loc7_ || param3)
                  {
                     while(true)
                     {
                        this.§&K§ = param5;
                        while(!_loc8_)
                        {
                           this.§]!`§ = param6;
                           if(_loc7_ || param3)
                           {
                              return;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!o§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §6!H§.playSound(this.§>A§);
                  }
                  §§push(false);
                  continue;
               }
            }
            return §§pop();
         }
         while(true)
         {
            §§push(false);
            if(_loc4_)
            {
               break;
            }
            §§goto(addr53);
         }
         return §§pop();
      }
      
      override public function clone() : §!!%§
      {
         return new §#C§(time,duration,this.§>A§,this.§+!Q§,this.§&K§,this.§]!`§);
      }
   }
}
