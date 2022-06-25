package §?$§
{
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §8!?§.TextureManager;
   
   public class §<b§ extends §9!'§
   {
       
      
      private var §9!M§:String;
      
      private var §6! §:Boolean;
      
      private var §1E§:Number;
      
      private var §[x§:int;
      
      public function §<b§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§9!M§ = param3;
               loop1:
               while(true)
               {
                  this.§6! § = param4;
                  loop2:
                  while(true)
                  {
                     this.§1E§ = param5;
                     loop3:
                     while(_loc8_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§[x§ = param6;
                           if(!(_loc7_ && param1))
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(super.update(param1,param2,param3));
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr80:
               addr61:
               while(true)
               {
                  if(§§pop())
                  {
                     SoundEngine.§`B§(this.§9!M§);
                     §§push(false);
                     break;
                  }
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return §§pop();
         }
         while(true)
         {
            §§push(false);
            if(_loc5_ || param2)
            {
               if(!(_loc4_ && param3))
               {
                  break;
               }
               §§goto(addr80);
            }
            §§goto(addr61);
         }
         return §§pop();
      }
      
      override public function clone() : §9!'§
      {
         return new §<b§(time,duration,this.§9!M§,this.§6! §,this.§1E§,this.§[x§);
      }
   }
}
